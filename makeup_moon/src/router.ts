import{createRouter,createWebHashHistory} from 'vue-router'
import HomePage from './pages/HomePage.vue'

const routes = [
{path:'/', component:HomePage,name:"HomePage"},




]

export const router = createRouter({

history: createWebHashHistory(),
routes,

})