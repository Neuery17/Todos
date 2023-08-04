<script setup>
import "./assets/main.css"
import Header from "@/components/Header.vue";

</script>

<template>
  <Header></Header>
  <router-view></router-view>

  <footer id="copyrightFooter">
    <hr id="seperatorCopyright">
    <label id="copyright">Copyright © 2023 by Jannick Angerer </label>
  </footer>

</template>


<style scoped>
#copyright {
  color: lightgrey;
  position: fixed;
  width: 100%;
}

#seperatorCopyright {
  border-top: 1px solid lightgrey;
}

#copyrightFooter {
  position: fixed;
  bottom: 0;
  width: 100%;
  height: 5%;
}



</style>
