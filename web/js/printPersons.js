import {http} from './http.js';
import {getSubjects} from './printSubjects.js';
export {getPersons};
export {printListPersons};

function getPersons() {
    http({url:'listPersonsJson',options:{method:'GET'}})
        .then(function(response) {  
            printListPersons(response.dataJson);
            console.log('Request succeeded with JSON response', response);  
        });
}

function printListPersons(data) {
    let output = '<div class="w-100 d-flex justify-content-center">';
    for(let i=0; i<data.length; i++) {
        output += '<div class="card border-primary m-3" style="max-width: 30rem;">';
        output += '<div class="card-header">';
        output += data[i].name;
        output += '</div>';
        output += '</div>';
    }
    output += '</div>';
    document.getElementById('content').innerHTML = output;
}
