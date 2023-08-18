<script setup>
import ContentBoxes from "@/components/contentBoxes.vue";
</script>

<template>
  <body class="websiteContainer">
  <div id="firstImp">
    <h1 id="tagline">Plan your whole Day.</h1>
    <p id="description">A nice Tool to write down your Todos.<br>
      <router-link id="descriptionLink" to="/SignUpView">Sign In now to get Full Access!</router-link>
    </p>
  </div>
  <div id="buttonSection">
    <button class="getStartedBtn">Get Started ➜</button>
  </div>
  <div class="contentBoxesContainer">
    <content-boxes></content-boxes>
  </div>
  </body>
</template>

<style scoped>
.websiteContainer {
  margin: 0;
  height: 80%;
}

.contentBoxesContainer {
  display: flex;
  justify-content: center;
  width: 100%;
  height: 100%;
}

#firstImp {
  text-align: center;
}

.getStartedBtn {
  margin-bottom: 0;
  margin-top: 2%;
  background-color: #00bd7e;
  border: none;
  color: white;
  border-radius: 10px;
  font-size: larger;
  margin-right: 5px;
}

.getStartedBtn:hover {
  background-color: #13aa77;
}

#buttonSection {
  display: flex;
  justify-content: center;
}

body {
  font-family: Arial, serif;
}

#tagline {
  background: -webkit-linear-gradient(0deg, #267909, #00d4ff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-size: 400%;
  margin-bottom: 1%;
}

#description {
  font-size: 150%;
  color: darkgrey;
}

#descriptionLink {
  color: darkgrey;
  font-size: 100%;
}

@media screen and (max-width: 790px) {
  .contentBoxesContainer {
    display: grid;
    width: 500%;
    margin-right: 10%;
    margin-left: 10%;
  }
}


</style>