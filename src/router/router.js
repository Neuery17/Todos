import {createRouter, createWebHistory} from "vue-router";
import HomeView from "@/HomeView.vue";
import SignUpView from "@/SignUpView.vue";


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
        }
    ]
})

export default router;