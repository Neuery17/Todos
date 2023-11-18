<script setup>
import {onMounted, ref} from "vue";

const uName = ref('')
const email = ref('')
const password = ref('')
const confPassword = ref('')
const alert = ref('')

const account = {}

const emailKeyPressed = ref()
const uNameKeyPressed = ref()
const pwdKeyPressed = ref()
const pwdConfKeyPressed = ref()

const confPwdCheck = ref()
const pwdCheck = ref()
const emailCheck = ref()
const emailValidCheck = ref()
const uNameCheck = ref()

function confirmEmail () {
  emailKeyPressed.value = true
  if (email.value === "") {
    emailCheck.value = false
  } else {
    emailCheck.value = true;
  }

  if (email.value.match("(([a-zA-Z]|[0-9])+@[a-zA-z]+\\.[a-zA-Z][a-zA-z]+)")) {
    emailValidCheck.value = true
  } else {
    emailValidCheck.value = false
  }
}

function confirmUName () {
  uNameKeyPressed.value = true;
  if (uName.value === "") {
    uNameCheck.value = false
  } else {
    uNameCheck.value = true
  }
}

function confirmPwd () {
  pwdKeyPressed.value = true;
  if (password.value === "") {
    pwdCheck.value = false
  } else {
    pwdCheck.value = true
  }
}

function confirmConfPwd () {
  pwdConfKeyPressed.value = true;
  if (password.value !== confPassword.value) {
    confPwdCheck.value = false
  } else {
    confPwdCheck.value = true
  }
}

function confirmCreation () {
  if (uNameCheck.value && emailCheck.value && emailValidCheck.value && confPwdCheck.value && pwdCheck.value) {
    account.value = {uName: uName.value, email: email.value, password: password.value}
    alert.value = ""
    createAccount()
  } else {
    alert.value = "Incomplete Data!"
  }
}

function createAccount () {
  console.log("Hallo")
}
</script>

<template>
  <div id="container">
    <div id="inputContainer">
      <p class="alert"> {{ alert }}</p>
      <label class="signInLabel">Create an free Account</label>
      <div class="inputFieldDiv">
        <input class="inputField" @keyup="confirmUName" v-model="uName" placeholder="Username">
        <p class="alert" v-if="!uNameCheck && uNameKeyPressed">Type in a Username!</p>
      </div>
      <div class="inputFieldDiv">
        <input class="inputField" @keyup="confirmEmail" v-model="email" placeholder="E-Mail Adress">
        <p class="alert" v-if="!emailCheck && emailKeyPressed">Type in a Email-Adress!</p>
        <p class="alert" v-if="!emailValidCheck && emailKeyPressed && emailCheck">This is not a valid Email!</p>
      </div>
      <div class="inputFieldDiv">
        <input type="password" class="inputField" @keyup="confirmPwd" v-model="password" placeholder="Password">
        <p class="alert" v-if="!pwdCheck && pwdKeyPressed">Type in a password!</p>
      </div>
      <div class="inputFieldDiv">
        <input type="password" class="inputField" @keyup="confirmConfPwd" v-model="confPassword" placeholder="Confirm Password">
        <p class="alert" v-if="!confPwdCheck && pwdConfKeyPressed">The passwords do not match!</p>
      </div>
      <button id="createBtn" @click="confirmCreation">Create Account</button>
  </div>
  </div>
</template>

<style scoped>
#inputContainer {
  display: inline-grid;
  align-content: center;
  justify-content: center;
  margin-top: 10%;
}

#container {
  display: grid;
}

.inputFieldDiv {
  margin-top: 10px;
  margin-bottom: 10px;
}

.inputField {
  border-radius: 10px;
  font-size: 200%;
  padding: 2px;
  color: lightgrey;
}

#createBtn {
  border-radius: 30px;
  font-size: 200%;
  background-color: #00bd7e;
  border: none;
  color: white;
}

.signInLabel {
  font-size: 200%;
  text-align: center;
}

p.alert {
  color: var(--error-600);
  text-align: center;
  font-size: 200%;
}

#createBtn:hover {
  background-color: #13aa77;
}
</style>