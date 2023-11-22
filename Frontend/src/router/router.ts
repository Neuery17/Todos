import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
import DefaultLayout from "../Views/DefaultLayout.vue";
import NoFooterLayout from "../Views/NoFooterLayout.vue";
import HomeView from "frontend/src/Views/HomeView.vue";

const routes : Array<RouteRecordRaw> = [
    {
        path: "/",
        component: DefaultLayout,
        children: [
            {
                path: "home",
                name: "home",
                component: HomeView
            }
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