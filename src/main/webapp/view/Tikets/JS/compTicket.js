function calctot(){
    const precio=1000
    console.log("ingreso a calctot")
    
        let cant=document.getElementById("cant").value
        console.log(cant)
        if(cant>=1) {
       
        let total=cant*precio
        console.log(total)

        let desc=document.getElementById("desc").value
        console.log(desc)
        total= total - (total*desc/100)

        document.getElementById("total").innerHTML=total 
        document.getElementById("total").className="bs-dark-text-emphasis p-1" 

        } else {
        document.getElementById("total").innerHTML="debe ingresar una cantidad mayor de cero"
        document.getElementById("total").className="bg-danger text-light p-1"
        }
    }
// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
  
        form.classList.add('was-validated')
      }, false)
    })
  })()

  function changeSel(valor) {
    document.getElementById("desc").value=valor
  }