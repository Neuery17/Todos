import {createRouter, createWebHistory} from "vue-router";
import HomeView from "@/HomeView.vue";
import SignUpView from "@/SignUpView.vue";
import LogInView from "@/LogInView.vue";

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes : [
        {
            path: "/",
            name: "Home",
            component: HomeView,
        },
        {
            path: "/SignUpView",
            name: "signUpWindow",
            component: SignUpView,
        },
        {
            path: "/LogInView",
            name: "loginWindow",
            component: LogInView,
        }
    ]
})

export default router;