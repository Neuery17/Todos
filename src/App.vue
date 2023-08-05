<script setup>
import "./assets/main.css"
import Header from "@/components/Header.vue";

</script>

<template>
  <Header></Header>
  <hr id="seperatorHeader">
  <router-view></router-view>

  <footer id="copyrightFooter">
    <hr id="seperatorCopyright">
    <label id="copyright">Copyright © 2023 by Jannick Angerer </label>
  </footer>

</template>


<style scoped>
#copyright {
  color: lightgrey;
}

#seperatorCopyright {
  border-top: 1px solid lightgrey;
}

#copyrightFooter {
  margin-top: 5%;
  margin-bottom: 0;
}

#seperatorHeader {
  border-top: 1px solid lightgrey;
  width: 100%;
}

</style>
