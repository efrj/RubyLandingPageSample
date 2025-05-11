window.onload = function() {
  const form = document.getElementById('form-blackbox');
  const emailInput = document.getElementById('email-input');
  const modalBackdrop = document.getElementById('modal-backdrop');
  const emailModal = document.getElementById('email-modal');
  const modalMessage = document.getElementById('modal-message');
  const modalClose = document.getElementsByClassName('modal-close')[0];

  form.addEventListener('submit', function(event) {
    event.preventDefault();

    const enteredEmail = emailInput.value;
    modalMessage.textContent = `Confirmation sent to: ${enteredEmail} (fictional)`;
    modalBackdrop.style.display = 'block';
    emailModal.style.display = 'block';
  });

  modalClose.addEventListener('click', function() {
    modalBackdrop.style.display = 'none';
    emailModal.style.display = 'none';
  });

  document.querySelectorAll('.field, textarea').forEach(function(el) {
    el.addEventListener('focusin', function() {
      if (this.title === this.value) {
        this.value = '';
      }
    });
    el.addEventListener('focusout', function() {
      if (this.value === '') {
        this.value = this.title;
      }
    });
  });

  const bgImg = document.querySelector('#bg img');
  const wrapper = document.querySelector('#wrapper');
  const ratioW = 1440;
  let devW = 1;
  let devL = 0;
  const eyeOff = 300;

  function alignBG() {
    if (bgImg.width > ratioW) {
      devW = bgImg.width / 1440;
    } else {
      devW = 1;
    }
    bgImg.style.top = `${-((eyeOff * devW) - eyeOff)}px`;

    if (wrapper.offsetWidth < ratioW) {
      devL = -( (ratioW - wrapper.offsetWidth) / 2);
    } else {
      devL = 0;
    }
    bgImg.style.left = `${devL}px`;
  }

  window.addEventListener('resize', alignBG);
  window.addEventListener('load', function() {
    alignBG();
    bgImg.style.opacity = 1;
  });
};
