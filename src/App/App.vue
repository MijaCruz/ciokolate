<script setup>


//Import de la cabecera de la pagina web
import Header from './../components/Header.vue';

</script>

<template>
    <main class="bg-ciocrema-25 dark:bg-ciocrema-900">

        <Header></Header>

        <section class="mt-4">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-6 p-0 bg-cover">
                        <div class="flex items-center h-[656px] mb-2 mx-2 bg-ciovainilla-400 dark:bg-ciovainilla-900 hover:shadow-lg ease-in-out transition">
                            <div class="mx-2">
                                <div class="mb-12">
                                    <img src="./../assets/img/carta/chessecake/cheescake_fresa.jpg" alt="Cheesecake de fresa" class="shadow rounded grayscale-[20%] hover:grayscale-0 mx-auto w-80">
                                </div>
                                
                                <h1 class="font-cookie mb-1 ml-8 text-cionegro dark:text-cioblanco">Cheesecakes</h1>
                                <p class=" ml-8 text-cionegro dark:text-cioblanco mb-3">Sitamet, consectetur adipiscing elit, sed do eiusmod tempor incidid-unt labore edolore magna aliquapendisse ultrices gravida.</p>
                                <a href="#" class=" ml-8 no-underline transition ease-in-out duration-100 text-ciocrema-500 hover:text-ciocrema-900 dark:text-ciocrema-50 dark:hover:text-cioblanco">Compra ya!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="row">

                            <div class="col-sm-6 col-md-6 col-lg-6 p-0">
                                <div class="items-center h-80 mb-2 mx-2 bg-ciorosa-300 dark:bg-ciorosa-500 hover:shadow-lg ease-in-out transition">
                                    <div class="mx-2 text-center">
                                        <div class="row justify-content-center">
                                            <div class="col offset-3 mb-2 mx-auto mt-3">
                                                <img src="./../assets/img/carta/helado/copa_raton.jpg" alt="Cheesecake de fresa" class="rounded shadow-lg grayscale-[20%] hover:grayscale-0 mx-auto w-40">
                                            </div>
                                        </div>
                                        <h4 class="font-cookie text-cionegro dark:text-cioblanco">Helados</h4>
                                        <p class="text-cionegro dark:text-cioblanco">13 productos</p>
                                        <a href="#" class="no-underline transition ease-in-out duration-100 text-ciocrema-50 hover:text-cioblanco">Compra ya!</a>

                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-6 col-lg-6 p-0">
                                <div class="items-center h-80 mb-2 mx-2 bg-ciorosa-300 dark:bg-ciorosa-500 hover:shadow-lg ease-in-out transition">
                                    <div class="mx-2 text-center">
                                        <div class="row justify-content-center">
                                            <div class="col offset-3 mb-2 mx-auto mt-3">
                                                <img src="./../assets/img/carta/pastel/mil_hojas.jpg" alt="Cheesecake de fresa" class="rounded shadow-lg grayscale-[20%] hover:grayscale-0 mx-auto w-40">
                                            </div>
                                        </div>
                                        <h4 class="font-cookie text-cionegro dark:text-cioblanco">Pasteles</h4>
                                        <p class="text-cionegro dark:text-cioblanco">18 productos</p>
                                        <a href="#" class="no-underline transition ease-in-out duration-100 text-ciocrema-50 hover:text-cioblanco">Compra ya!</a>

                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-6 col-lg-6 p-0">
                                <div class="items-center h-80 mb-2 mx-2 bg-ciorosa-300 dark:bg-ciorosa-500 hover:shadow-lg ease-in-out transition">
                                    <div class="mx-2 text-center">
                                        <div class="row justify-content-center">
                                            <div class="col offset-3 mb-2 mx-auto mt-3">
                                                <img src="./../assets/img/carta/bebida_fria/smoothie_bosque.jpg" alt="Cheesecake de fresa" class="rounded shadow-lg grayscale-[20%] hover:grayscale-0 mx-auto w-40">
                                            </div>
                                        </div>
                                        <h4 class="font-cookie text-cionegro dark:text-cioblanco">Smoothies</h4>
                                        <p class="text-cionegro dark:text-cioblanco">5 productos</p>
                                        <a href="#" class="no-underline transition ease-in-out duration-100 text-ciocrema-50 hover:text-cioblanco">Compra ya!</a>

                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-6 col-lg-6 p-0">
                                <div class="items-center h-80 mb-2 mx-2 bg-ciorosa-300 dark:bg-ciorosa-500 hover:shadow-lg ease-in-out transition">
                                    <div class="mx-2 text-center">
                                        <div class="row justify-content-center">
                                            <div class="col offset-3 mb-2 mx-auto mt-3">
                                                <img src="./../assets/img/carta/bebida_caliente/latte.jpg" alt="Cheesecake de fresa" class="rounded shadow-lg grayscale-[20%] hover:grayscale-0 mx-auto w-40">
                                            </div>
                                        </div>
                                        <h4 class="font-cookie text-cionegro dark:text-cioblanco">Calientes</h4>
                                        <p class="text-cionegro dark:text-cioblanco">6 productos</p>
                                        <a href="#" class="no-underline transition ease-in-out duration-100 text-ciocrema-50 hover:text-cioblanco">Compra ya!</a>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
</template>

<style scoped>
</style>
