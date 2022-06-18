const tabs = document.querySelectorAll('.nav-link');
const table = document.querySelector('.table');
const container = document.querySelector('.container');
const form = document.querySelector('form');


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
}

function renderForm(res, tableName) {
    form.innerHTML = '';

    if (!res) {
        form.innerHTML = 'no data';
        return;
    }
    const keys = Object.keys(res[0]);

    for (let i of keys) {
        if (i == 'id') continue;

        form.innerHTML += `
            <label for="${i}" class="form-label">${i}</label>
            <input type="text" id="${i}" name="${i}" class="form-control" required>
        `;
    }
    form.innerHTML += '<button type="submit" class="btn btn-primary btn_submit">Submit</button>';
    form.setAttribute('data-table', tableName)
}

function getTable(tableName) {
    fetch('/' + tableName.toLowerCase())
    .then(res => res.json())
    .then(res => {
        renderTable(res)
        renderForm(res, tableName)
    })
}


tabs.forEach(tab => {
    tab.addEventListener('click', () => {
        tabs.forEach(t => t.classList.remove('active'));
        tab.classList.add('active');


        if (!tab.getAttribute('data-joins')) {
            getTable(tab.textContent)
        }
        else {
            
        }
    });
});

form.addEventListener('submit', (e) => {
    e.preventDefault();

    const formData = new FormData(e.target);

    //const data = Object.fromEntries(formData.entries())
    const tableName = e.target.getAttribute('data-table')
    const data = {keys: [...formData.keys()], values: [...formData.values()], tableName}
    

    fetch('/addForm', {
        method: 'POST',
        body: JSON.stringify(data),
        headers: {
            'Content-Type': 'application/json'
        }
    })
})

getTable('tea')