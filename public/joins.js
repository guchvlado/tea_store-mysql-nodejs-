const cards = document.querySelector('.cards');
const table = document.querySelector('.table');
const buttons = document.querySelectorAll('.btn');

function renderTable(res) {
    if (!res) {
        table.innerHTML = 'no data';
        return;
    }
    const keys = Object.keys(res[0]);
    
    let tableHeader = '';
    let tableContent = '';

    keys.forEach(key => tableHeader += `<th scope="col">${key}</th>`);

    for (let i = 0; i < res.length; i++) {
        tableContent += '<tr>';

        for (let value of Object.values(res[i])) {
            tableContent += `<td>${value}</td>`;
        }

        tableContent += '</tr>';
    }
    table.innerHTML = `
        <thead>
        <tr>
            ${tableHeader}
        </tr>
        </thead>
        <tbody>
            ${tableContent}
        </tbody>
    `;
    table.scrollIntoView()
}

function renderCards(res) {
    if (!res) {
        cards.innerHTML = 'no data';
        return;
    }
    cards.innerHTML = '';

    for (let item of res) {
        const newCard =document.createElement('div');
        newCard.classList.add('card');
        newCard.style.width = "18rem";
        newCard.innerHTML = `
            <img src="${item.url}" class="card-img-top" alt="tea">
            <div class="card-body">
                <h5 class="card-title">${item.name}</h5>
                <p class="card-text">${item.description}</p>
            </div>
        `;

        cards.append(newCard);
    }

}

function sqlRequest(sql) {
    fetch('/sql_joins/' + sql)
    .then(res => res.json())
    .then(res => renderTable(res))
}

function toggleButton(btn) {
    if (btn.classList.contains('active')) {
        btn.classList.remove('active');
        return true;
    }

    buttons.forEach(button => button.classList.remove('active'))
    cards.innerHTML = '';
    table.innerHTML = '';
    btn.classList.add('active');
}



const sqlArray = [
    'select tea.name, tea.description, tea_photo.url from tea join tea_photo on tea.id = tea_photo.tea_id;',

    'select client.name, cart.id as cart_id, tea_cart.tea_id, tea.price from client left join cart on cart.client_id = client.id left join tea_cart on tea_cart.cart_id = cart.id left join tea on tea.id = tea_cart.tea_id;',

    'select client.name, coalesce(sum(tea.price), 0) as cart_sum from client left join cart on cart.client_id = client.id left join tea_cart on tea_cart.cart_id = cart.id left join tea on tea.id = tea_cart.tea_id group by client.name order by cart_sum desc;',

    'select client.name, delivery.address, delivery.dateOfDelivery as date from client right join cart on cart.client_id = client.id right join delivery_cart on delivery_cart.cart_id = cart.id right join delivery on delivery_cart.delivery_id = delivery.id order by date desc;'
];


buttons[0].addEventListener('click', (e) => {
    if (toggleButton(e.target)) {
        cards.innerHTML = '';
        return
    }

    const sql = sqlArray[0];

    fetch('/sql_joins/' + sql)
    .then(res => res.json())
    .then(res => renderCards(res))
});

buttons[1].addEventListener('click', (e) => {
    if (toggleButton(e.target)) {
        table.innerHTML = '';
        return
    }

    const sql = sqlArray[1];
    sqlRequest(sql)
})

buttons[2].addEventListener('click', (e) => {
    if (toggleButton(e.target)) {
        table.innerHTML = '';
        return
    }

    const sql = sqlArray[2];
    sqlRequest(sql)
})

buttons[3].addEventListener('click', (e) => {
    if (toggleButton(e.target)) {
        table.innerHTML = '';
        return
    }

    const sql = sqlArray[3];
    sqlRequest(sql)
})