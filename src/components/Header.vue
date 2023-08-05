<script setup>

import {onMounted, ref} from "vue";

const checkDarkmode = ref(false);


</script>

<template>
  <header id="headerHome">
    <div class="header-container">

      <router-link id="routerImg" to="/"><img id="todoLogo" src="src/images/LogoTodos.png"></router-link>
      <label id="headerLabel">Todos.vue</label>
      <div class="spacer"></div> <!-- Add a spacer to push the signUp-Container to the right -->
      <div class="signUp-Container">
        <!-- Sign Up and Log In Buttons-->
        <router-link class="signUpButton" to="/LogInView">Log In</router-link>
        <router-link class="signUpButton" to="/SignUpView">Sign Up</router-link>
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
  width: 70px;
  height: auto; /* Set height to auto to maintain aspect ratio */
  margin-right: 10px;/* Add some spacing between the logo and the label */
}

#headerLabel {
  font-size: 150%;
  margin-left: 10px;
}

header {
  position: relative;
  width: 100%;
}

.spacer {
  flex: 1; /* Make the spacer fill the available space to push signUp-Container to the right */
}

.signUp-Container {
  display: flex;
  align-items: center; /* Align items vertically at the center */
}

.signUpButton {
  text-decoration: none;
  margin-right: 5px;
  background-color: #00bd7e;
  padding: 5px;
  border: none;
  color: white;
  border-radius: 25px;
  font-size: 120%;
}

.signUpButton:hover {
  background-color: #13aa77;
}

#routerImg {
  width: 50px;
}


</style>