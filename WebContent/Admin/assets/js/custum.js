// JavaScript pour afficher un message personnalisé sur le survol
document.querySelectorAll('.nav-item.disabled').forEach(function (item) {
    item.addEventListener('mouseover', function () {
        alert("Cette page n'est pas encore en cours de développement.");
    });
});
