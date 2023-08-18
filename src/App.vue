<script setup>
import "./assets/main.css"
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
</script>

<template>
  <Header></Header>
  <hr id="seperatorHeader">
  <router-view></router-view>
  <Footer></Footer>
</template>

<style scoped>
#seperatorHeader {
  border-top: 1px solid lightgrey;
  width: 100%;
}
</style>
