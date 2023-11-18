import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
import HomeView from "../Views/HomeView.vue";
import SignUpView from "@/SignUpView.vue";
import LogInView from "@/LogInView.vue";
import DefaultLayout from "../Views/DefaultLayout.vue";
import NoFooterLayout from "../Views/NoFooterLayout.vue";

const routes : Array<RouteRecordRaw> = [
    {
        path: "/",
        component: DefaultLayout,
        children: [

        ]
    },
    {
        path: "/",
        component: NoFooterLayout,
        children: [

        ]
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router;