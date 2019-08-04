import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Token from 'components/token'

Vue.use(VueRouter);

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/token', component: Token },
    ],
})