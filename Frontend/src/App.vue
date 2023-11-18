<script setup>
import "./assets/main.css"
import Header from "@/components/header/Header.vue";
import Footer from "@/components/footer/Footer.vue";
</script>

<template>
  <Header></Header>
  <router-view></router-view>
  <Footer></Footer>
</template>

<style scoped>
</style>
