<script setup>
</script>

<template>
    <div class="cards">
      <h2 class="card-title">
        Make your life easier
      </h2>
      <p class="cardContent">
        Transform the way you handle tasks and responsibilities, making every day more manageable and stress-free with our user-friendly Todo list tool.
      </p>
    </div>
  <div class="cards">
    <h2 class="card-title">
      Make managing life easy
    </h2>
    <p class="cardContent">
      Discover the ultimate tool for effortlessly managing your life's demands. Our Todo list system empowers you to stay in control and achieve more with less effort.
    </p>
  </div>
  <div class="cards">
    <h2 class="card-title">
      Save time
    </h2>
    <p class="cardContent">
      Unlock extra hours in your day by optimizing your task management with our efficient Todo list platform. Say goodbye to wasted time and hello to increased productivity.
    </p>
  </div>
</template>

<style scoped>
.cards {
  box-shadow: 0 0 8px 5px #1bb683;
  width: 15%;
  height: auto;
  text-align: center;
  float: left;
  border: black 1px solid;
  border-radius: 10px;
  margin-right: 20px;
  margin-top: 3%;
  padding: 5px;
}

.card-title {
  margin-bottom: 10px;
}

.cardContent {
  color: dimgrey;
}

@media screen and (max-width: 790px) {
  .cards {
    width: 80%;
    margin-left: 10%;
  }
}
</style>