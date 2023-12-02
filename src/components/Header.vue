<script setup>

//Importa el componente del boton TEMA
import { VueElement } from 'vue';
import DarkMode from './DarkMode.vue'

</script>
<template> 
    <header class="py-4 px-6 shadow md:flex justify-between items-center bg-ciocrema-25 dark:bg-cionegro">

        <div class="flex items-center ml-5">

            <a href="../index.html" class="cursor-pointer">
                <img src="../assets/icon/favicon-ciokolate.png" alt="CIOKOLATE"
                    class="w-20">
            </a>

        </div>

        <div class="container-full">
            <div class="row">

                <div class="col">
                    <a href="#" class="no-underline text-xl font-semibold first-line:duration-150 ease-in-out
                    text-cionegro dark:text-cioblanco
                    hover:text-ciorubor-700 dark:hover:text-ciorosa-100">¿Quienes</a>
                </div>

                <div class="col">
                    <a href="#" class="no-underline text-xl font-semibold first-line:duration-150 ease-in-out
                    text-cionegro dark:text-cioblanco
                    hover:text-ciorubor-700 dark:hover:text-ciorosa-100">Carta</a>
                </div>

                <div class="col">
                    <a href="#" class="no-underline text-xl font-semibold first-line:duration-150 ease-in-out
                    text-cionegro dark:text-cioblanco
                    hover:text-ciorubor-700 dark:hover:text-ciorosa-100">Galeria</a>
                </div>
                
                <div class="col">
                    <a href="#" class="no-underline text-xl font-semibold first-line:duration-150 ease-in-out
                    text-cionegro dark:text-cioblanco
                    hover:text-ciorubor-700 dark:hover:text-ciorosa-100">Ubicanos</a>
                </div>

                <div class="col">
                    <a href="#" class="no-underline text-xl font-semibold first-line:duration-150 ease-in-out
                    text-cionegro dark:text-cioblanco
                    hover:text-ciorubor-700 dark:hover:text-ciorosa-100">Servicios</a>
                </div>


            </div>
        </div>

        <div class="flex items-center">
            <a  href="../../register.html" class="border-2 p-2 px-4 mx-3 font-semibold rounded-full transition ease-in-out duration-150
                        border-cionegro text-cionegro hover:border-ciorubor-700 hover:text-ciorubor-700
                        dark:border-cioblanco dark:text-cioblanco dark:hover:border-ciorosa-200 dark:hover:text-ciorosa-200"
                >
                Inicia sesion
            </a>

            <a href="../../register.html" class="border-2 p-2 px-4 mx-3 font-semibold rounded-full transition ease-in-out duration-150
                        border-cionegro bg-cionegro text-cioblanco hover:border-ciorubor-700 hover:bg-ciorubor-700 hover:text-cioblanco
                        dark:border-cioblanco dark:bg-cioblanco dark:text-cionegro dark:hover:border-ciorosa-100 dark:hover:bg-ciorosa-100 dark:hover:text-ciorubor-900">
                Registrate
            </a>

        </div>

        <DarkMode></DarkMode>

        
    </header>
</template>

<script >
//Definimos los nombres para el NAVBAR
</script>