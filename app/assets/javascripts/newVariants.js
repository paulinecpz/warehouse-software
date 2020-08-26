const button = document.querySelector('#clickme');

button.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Bingo!';
  audio.play();
});
