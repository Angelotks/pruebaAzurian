function eliminar(id){
	swal({
  title: "Estas seguro?",
  text: "Una vez eliminado no podras recuperarlo",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((OK) => {
  if (OK) {
	$.ajax({
		url:"/eliminar/"+id,
		success: function(respuesta){
			console.log(respuesta);
		}
	});
    swal("El usuario ha sido eliminada con exito", {
      icon: "success",
    }).then((ok)=>{
		if(ok){
			location.href="/listar";
		}
	});
  } else {
    swal("Tu usuario no se ha eliminado!");
  }
});
}
$(document).ready( function () {
    $('.DataTable').DataTable();
} );