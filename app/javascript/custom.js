document.addEventListener('DOMContentLoaded', function() {
    const toggleMenu = document.getElementById('toggle-menu');
    const navbarmenu = document.getElementsByClassName('navbar-menu')[0];
    const close = document.getElementById('close');
  
    toggleMenu.addEventListener('click', function() {
      toggleMenu.classList.toggle('active');
      close.style.display = 'block';
      navbarmenu.style.display = 'block';
      toggleMenu.style.display = 'none';
    });
  
    close.addEventListener('click', function() {
      toggleMenu.classList.remove('active');
      close.style.display = 'none';
      navbarmenu.style.display = 'none';
      toggleMenu.style.display = 'block';
    });
  });
  