<section id="hero" class="hero section light-background" style="padding-top: 1px;">
        
  <!-- Appointment Section -->
<section id="appointment" class="appointment section">
<!-- Section Title -->
<div class="container section-title" data-aos="fade-up">
<h2>Réservez votre rendez-vous médical</h2>
<p>
Trouvez le médecin de votre choix et réservez facilement votre
consultation en quelques étapes.
</p>
</div>
<!-- End Section Title -->

<div class="container" data-aos="fade-up" data-aos-delay="100">
<form
action="forms/appointment.php"
method="post"
role="form"
class="php-email-form"
>
<div class="row">
 <div class="col-md-4 form-group">
   <input
     type="text"
     name="name"
     class="form-control"
     id="name"
     placeholder="Votre Nom"
     required=""
   />
 </div>
 <div class="col-md-4 form-group mt-3 mt-md-0">
   <input
     type="email"
     class="form-control"
     name="email"
     id="email"
     placeholder="Votre Email"
     required=""
   />
 </div>
 <div class="col-md-4 form-group mt-3 mt-md-0">
   <input
     type="tel"
     class="form-control"
     name="phone"
     id="phone"
     placeholder="Votre Téléphone"
     required=""
   />
 </div>
</div>
<div class="row">
 <div class="col-md-4 form-group mt-3">
   <input
     type="datetime-local"
     name="date"
     class="form-control datepicker"
     id="date"
     placeholder="Date de rendez-vous"
     required=""
   />
 </div>
 <div class="col-md-4 form-group mt-3">
   <select
     name="department"
     id="department"
     class="form-select"
     required=""
   >
     <option value="">Choisir le département</option>
     <option value="Cardiologie">Cardiologie</option>
     <option value="Dermatologie">Dermatologie</option>
     <option value="Pédiatrie">Pédiatrie</option>
     <!-- Ajoutez d'autres départements selon vos besoins -->
   </select>
 </div>
 <div class="col-md-4 form-group mt-3">
   <select
     name="doctor"
     id="doctor"
     class="form-select"
     required=""
   >
     <option value="">Choisir un médecin</option>
     <option value="Dr. Jean">Dr. Jean</option>
     <option value="Dr. Marie">Dr. Marie</option>
     <option value="Dr. Pierre">Dr. Pierre</option>
     <!-- Ajoutez d'autres médecins selon vos besoins -->
   </select>
 </div>
</div>

<div class="form-group mt-3">
 <textarea
   class="form-control"
   name="message"
   rows="5"
   placeholder="Message (optionnel)"
 ></textarea>
</div>
<div class="mt-3">
 <div class="loading">Chargement...</div>
 <div class="error-message"></div>
 <div class="sent-message">
   Votre demande de rendez-vous a été envoyée avec succès. Merci !
 </div>
 <div class="text-center">
   <!-- Bouton de soumission personnalisé -->
   <button type="submit" class="btn btn-primary">
     Réserver votre rendez-vous médical
   </button>
 </div>
</div>
</form>
</div>

</section>
<!-- /Appointment Section -->

</section>
<!-- /Hero Section -->