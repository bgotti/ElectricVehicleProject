/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//JavaScript
//Menu Hamburger

const menuSlider = function() {
  const hamburger = document.querySelector('.hamburger');
  const menu = document.querySelector('.menu');

  hamburger.addEventListener('click', function() {
    menu.classList.toggle('menu__active');
    hamburger.classList.toggle('toggle');
  });

};

menuSlider();
