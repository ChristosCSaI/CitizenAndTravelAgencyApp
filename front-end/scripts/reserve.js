function updateTotalCost(){

    var price = parseInt(document.getElementById("trip-price").innerText);
    var people = parseInt(document.getElementById("quantity").value);
    
    if(isNaN(people)){
        people = 0;
    }
    if(isNaN(price)){
        price = 0;
    }

    if(people<0 || people === undefined ){
        document.getElementById("quantity").value = "1";
        people = parseInt(document.getElementById("quantity").value);
    }
    let total_cost = price*people;
    document.getElementById("total-cost-price").textContent = total_cost;
}

function getQueryParams() {
    const queryString = window.location.search.slice(1); 
    const params = {};
  
    queryString.split('&').forEach(param => {
        const [key, value] = param.split('=');
        params[key] = decodeURIComponent(value);
    });
  
    return params;
}

function getExcursion(id){

    const apiUrl = `http://localhost:8080/excursion?id=${id}`;
  
    fetch(apiUrl)
    .then(response => {
        if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
    })
    .then(data => {
        FillExc(data);
    })
    .catch(error => {
        console.error('Error:', error);
    });
}

function FillExc(data){
    console.log(data);
    const location = data.name;
    const tripDate = data.startDate + " εως " + data.endDate;
    const description = data.description;
    const price = String(data.price);
    const depLocation = data.departureLocation;
    const capacity = String(data.capacity);

    document.getElementById("location").textContent = location;
    document.getElementById("date").textContent = tripDate;
    document.getElementById("depLocation").textContent = depLocation;
    document.getElementById("trip-price").textContent = price;
    document.getElementById("description").textContent = description;
    document.getElementById("capacity").textContent = capacity;
    updateTotalCost();
}

function reserveExc(citId, excId) {
    console.log(citId);
    console.log()
    const apiUrl = 'http://localhost:8080/addReservation'; 
    console.log(excId);
    const data = {
        citizen: citId,
        excursion: excId
    };

    fetch(apiUrl, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        alert('Reservation completed!');
        history.back();


    })
    .catch(error => {
        console.error('Error during reservation:', error);
    });
}


function submitForm(event){
    event.preventDefault();
    reserveExc(citId, excId);
}
   function makeReservation() {
            const excursionId = document.getElementById('excursionId').value;
            const username = document.getElementById('username').value;
            const numberOfSeats = document.getElementById('numberOfSeats').value;

            const requestBody = {
                excursionId: parseInt(excursionId),
                username: username,
                numberOfSeats: parseInt(numberOfSeats)
            };

            try {
                const apiUrl=  fetch('http://localhost:8080/make', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(requestBody),
                });

                const resultElement = document.getElementById('result');

                if (response.ok) {
                    const data = await response.json();
                    resultElement.innerText = `Reservation successful: ${data.message}`;
                } else {
                    const data = await response.json();
                    resultElement.innerText = `Reservation failed: ${data.error}`;
                }
            } catch (error) {
                console.error('Error making reservation:', error);
                document.getElementById('result').innerText = 'Error making reservation. Please try again.';
            }
        }

params = getQueryParams();
console.log()
const citId = parseInt(params.citizenId);
const excId = parseInt(params.excId);


getExcursion(excId);
updateTotalCost();

