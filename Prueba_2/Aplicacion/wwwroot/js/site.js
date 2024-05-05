
function limpiarModal(valor) {
    document.getElementById("inputIdSueldo").value = valor;
    document.getElementById("inputSueldo").value = 0;
    $('#ModalSueldo').modal('show');
}

 async function guardarSueldo() {
    let idUsuario = $("#inputIdSueldo").val();
    let nuevoSueldo = $("#inputSueldo").val();

    let data = {
        IdUsuario: idUsuario,
        Sueldo: nuevoSueldo
    }
    const response = await fetch("http://localhost:5028/Usuarios/ActualizaSueldo", {
        method: "PUT", 
        mode: "cors", 
        cache: "no-cache", 
        credentials: "same-origin", 
        headers: {
            "Content-Type": "application/json",
        },
        redirect: "follow", 
        referrerPolicy: "no-referrer", 
        body: JSON.stringify(data)
    });
     if (response.ok == false) {
         alert("Ocurrió un error al actualizar el sueldo")
     } else {
         await cerrarModal();
         alert("Se ha actualizado el sueldo");
         location.href = "http://localhost:5028/Usuarios/Usuarios"
     }
}
async function generarCSV() {
    const response = await fetch("http://localhost:5028/Usuarios/RealizaCSV", {
        method: "GET",
        cache: "no-cache",
        credentials: "same-origin",
        headers: {
            "Content-Type": "application/json",
        },
    });
    if (response.ok) {
        alert("Se generó el archivo correctamente.");
    }
}
function cerrarModal() {
    $('#ModalSueldo').modal('hide');
}