<script setup>

</script>

<template>
  <header id="headerHome">
    <div class="header-container">
      <img id="todoLogo" src="src/images/LogoTodos.png">
      <label id="headerLabel">Todos.vue</label>
      <div class="signUp-Container">
        <button class="signUpButton">Log In</button>
        <button class="signUpButton">Sign In</button>
      </div>
    </div>


  </header>

</template>

<style scoped>
#headerHome {
  width: 100%;
}

.header-container {
  display: flex; /* Use flexbox to make logo and label flex items */
  align-items: center; /* Align items vertically at the center */
}

#todoLogo {
  width: 3%;
  height: auto; /* Set height to auto to maintain aspect ratio */
  margin-right: 10px; /* Add some spacing between the logo and the label */
}

#headerLabel {
  font-size: 150%;
}

header {
  position: relative;
  width: 100%;
}

.signUp-Container {
  margin-left: 83%;
}
.signUpButton {
  margin-right: 5px;
  background-color: #00bd7e;
  border: none;
  color: white;
  border-radius: 10px;
  font-size: larger;
}


</style>