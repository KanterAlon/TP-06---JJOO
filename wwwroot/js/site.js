document.addEventListener("DOMContentLoaded", function() {
    // Animación de fade-in y zoom-out para las secciones al hacer scroll
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('show');
            } else {
                entry.target.classList.remove('show');
            }
        });
    });

    document.querySelectorAll('.card, .about-site').forEach(section => {
        observer.observe(section);
    });

    // Efecto parallax para el banner
    window.addEventListener('scroll', function() {
        const scrollPos = window.scrollY;
        document.querySelector('.banner::before').style.transform = `translateY(${scrollPos * 0.5}px)`;
    });

    // Animación de hover en enlaces y botones
    const links = document.querySelectorAll('.nav-links a, .btn-detalle, .btn-submit');
    links.forEach(link => {
        link.addEventListener('mouseenter', () => {
            link.style.transform = 'scale(1.1)';
            link.classList.add('hovered');
        });
        link.addEventListener('mouseleave', () => {
            link.style.transform = 'scale(1)';
            link.classList.remove('hovered');
        });
    });

    // Animación de botón de eliminación
    const btnEliminar = document.querySelector('.btn-eliminar img');
    if (btnEliminar) {
        btnEliminar.addEventListener('mouseenter', () => {
            btnEliminar.style.transform = 'rotate(45deg) scale(1.2)';
        });
        btnEliminar.addEventListener('mouseleave', () => {
            btnEliminar.style.transform = 'rotate(0deg) scale(1)';
        });
    }

    // Animación de carga de página con transición rápida
    const loader = document.createElement('div');
    loader.className = 'loader';
    document.body.appendChild(loader);

    setTimeout(() => {
        loader.style.opacity = '0';
        setTimeout(() => {
            loader.remove();
        }, 300);
    }, 1500);

    // Partículas flotantes interactivas
    const particleContainer = document.createElement('div');
    particleContainer.className = 'particle-container';
    document.body.appendChild(particleContainer);

    for (let i = 0; i < 50; i++) {
        const particle = document.createElement('div');
        particle.className = 'particle';
        particleContainer.appendChild(particle);
    }

    // Movimiento de partículas con el mouse
    document.addEventListener('mousemove', (e) => {
        document.querySelectorAll('.particle').forEach(particle => {
            const x = e.clientX * particle.dataset.speed / 100;
            const y = e.clientY * particle.dataset.speed / 100;
            particle.style.transform = `translate(${x}px, ${y}px)`;
        });
    });
});