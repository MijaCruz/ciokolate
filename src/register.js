import { createApp } from 'vue'
import './style.css'
import Register from './App/Register.vue'

import firebase from 'firebase'

import 'tailwindcss/tailwind.css';
import './assets/css/bootstrap.min.css'
import './assets/js/bootstrap.bundle.min.js'
import '../node_modules/bootstrap-icons/font/bootstrap-icons.css'

createApp(Register).mount('#register')