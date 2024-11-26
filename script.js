document.getElementById("miBoton").addEventListener("click", function() {
    const mensajeElemento = document.getElementById("mensaje");
    mensajeElemento.classList.add("fade"); 
    mensajeElemento.innerText = " " + obtenerMensajeAleatorio();
  });
  
  function obtenerMensajeAleatorio() {
    const mensajes = [
      "If we can pass the matter.",
      "The only way to do great work is to love what you do.",
      "Live as if you were going to die tomorrow. Learn as if you were going to live forever."
    ];
  
    return mensajes[Math.floor(Math.random() * mensajes.length)];
  }

