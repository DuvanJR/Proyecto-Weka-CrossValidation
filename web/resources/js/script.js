//Crea un objeto XMLHttpRequest
var file = new XMLHttpRequest();
var dataSet = "";
var path = 'cerebrovascular.txt';

var div = document.getElementById("myData");
//div.innerHTML = "";

//Inicializa una nueva solicitud
file.open("GET", path, false);

//Se ejecuta cada vez que cambie el estado del objeto 'file'
file.onreadystatechange = function () {
    //La respuesta está lista
    if (file.readyState == 4 && file.status == 200) {
        //Devuelve la respuesta del servidor como una cadena de texto
        dataSet = file.responseText;
        console.log(dataSet);
        div.innerHTML = dataSet;
    }
};

//Envia la solicitud al servidor
file.send();


// Habilitar o Desabilitar un boton
/*const $btn = document.querySelector("button"),
 $form = document.querySelector("form");
 
 $form.addEventListener("keyup","Change"; e => {
 let disabled = true;
 
 if ($form.gender.value === "")
 disabled = true;
 if ($form.age.value === "")
 disabled = true;
 if ($form.hypertension.value === "")
 disabled = true;
 if ($form.heart_disease.value === "")
 disabled = true;
 if ($form.ever_married.value === "")
 disabled = true;
 if ($form.work_type.value === "")
 disabled = true;
 if ($form.Residence_type.value === "")
 disabled = true;
 if ($form.avg_glucose_level.value === "")
 disabled = true;
 if ($form.smoking_status.value === "")
 disabled = true;
 
 (disabled === true)
 ? $btn.disabled = true
 : $btn.disabled = false;
 
 })*/

/*
 function habilitar() {
 gender = document.getElementById("gender").value;
 age = document.getElementById("age").value;
 hypertension = document.getElementById("hypertension").value;
 heart_disease = document.getElementById("heart_disease").value;
 ever_married = document.getElementById("ever_married").value;
 work_type = document.getElementById("work_type").value;
 Residence_type = document.getElementById("Residence_type").value;
 avg_glucose_level = document.getElementById("avg_glucose_level").value;
 smoking_status = document.getElementById("smoking_status").value;
 
 val = 0;
 
 if (gender === "") {
 val++;
 }
 if (age === "") {
 val++;
 }
 if (hypertension === "") {
 val++;
 }
 if (heart_disease === "") {
 val++;
 }
 if (ever_married === "") {
 val++;
 }
 if (work_type === "") {
 val++;
 }
 if (Residence_type === "") {
 val++;
 }
 if (avg_glucose_level === "") {
 val++;
 }
 if (smoking_status === "") {
 val++;
 }
 if (val === 0) {
 document.getElementById("btn").disabled = false;
 } else {
 document.getElementById("btn").disabled = true;
 }
 }
 document.getElementById("gender").addEventListener("change", habilitar);
 document.getElementById("age").addEventListener("keyup", habilitar);
 document.getElementById("hypertension").addEventListener("change", habilitar);
 document.getElementById("heart_disease").addEventListener("change", habilitar);
 document.getElementById("ever_married").addEventListener("change", habilitar);
 document.getElementById("work_type").addEventListener("change", habilitar);
 document.getElementById("Residence_type").addEventListener("change", habilitar);
 document.getElementById("avg_glucose_level").addEventListener("keyup", habilitar);
 document.getElementById("smoking_status").addEventListener("change", habilitar);
 document.getElementById("btn").addEventListener("click", () => {
 alert("Haz llenado todo");
 });
 */


