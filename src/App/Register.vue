<script setup>

// Cabecera de la pagina web
import Header from './../components/Header.vue';

</script>

<!-- HTML5-->
<template>
  <main class="">

    <Header></Header>

    <div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						
						<h6 class="mb-0 pb-3 text-center">
                            <span class="mr-3 text-center w-20">Ingresa</span>
                            <span class="ml-5 text-center w-20">Registrate</span>
                        </h6>
                        <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
                        <label for="reg-log"> </label>

						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">

                                <!-- INGRESAR -->
								<div class="card-front bg-[url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/pat.svg')]
                                        bg-ciorubor-200 dark:bg-ciorubor-900"
                                        id="card-login">
									<div class="center-wrap">
										<div class="section text-center">

											<h4 class="mb-4 pb-3 text-cionegro dark:text-cioblanco">Inicia sesión</h4>

                                            <form>

                                                <!-- INPUT log-id-->
                                                <div class="form-group">
                                                    <input type="text" name="log-id" id="log-id" placeholder="Dni" autocomplete="off" maxlength="8"
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-postcard pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>	

                                                <!-- BTN ACCEDER -->
                                                <a  href="#" 
                                                class="nav-link mt-4 rounded px-7 justify-center ">
                                                    <span 
                                                        class="text-base font-semibold uppercase tracking-wider
                                                            rounded px-3 py-2
                                                            transition ease-in-out duration-100
                                                            bg-ciovainilla-300 text-ciorosa-900 
                                                            hover:bg-ciorosa-800 hover:text-ciovainilla-200 hover:shadow
                                                            dark:hover:bg-ciovainilla-400 dark:hover:text-ciorosa-700">acceder</span>
                                                </a>

                                            </form>
                                            
                                            <!-- Forgot password -->
                            				<p class="mb-0 mt-4 text-center ">
                                                <a href="#0" class="nav-link">
                                                    <span class="text-md font-semibold  transition ease-in-out duration-150 decoration-0 
                                                            text-ciocrema-700 hover:text-cionegro
                                                            dark:text-ciocrema-200 dark:hover:text-cioblanco">Olvidaste tu usuario</span>
                                                </a>
                                            </p>

				      					</div>
			      					</div>
			      		        </div>

                                <!-- REGISTRAR -->
								<div class="card-back bg-[url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/pat.svg')]
                                        bg-ciorubor-200 dark:bg-ciorubor-900"
                                        id="card-register">
									<div class="center-wrap">
										<div class="section text-center">

											<h4 class="mb-4 pb-3 text-cionegro dark:text-cioblanco">Registrate</h4>

                                            <form>

                                                <!-- INPUT log-id -->
                                                <div class="form-group my-2">
                                                    <input type="text" name="log-id" id="log-id" placeholder="Dni" autocomplete="off" maxlength="8"
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-postcard pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                                <!-- INPUT log-name -->
                                                <div class="form-group my-2">
                                                    <input type="text" name="log-name" id="log-name" placeholder="Nombres" autocomplete="off" 
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-user pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                                <!-- INPUT log-lastname -->
                                                <div class="form-group my-2">
                                                    <input type="text" name="log-lastname" id="log-lastname" placeholder="Apellidos" autocomplete="off" 
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-user pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                                <!-- INPUT log-phone -->
                                                <div class="form-group my-2">
                                                    <input type="text" name="log-phone" id="log-phone" placeholder="Teléfono" autocomplete="off" 
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-phone-alt pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                                <!-- INPUT log-email -->
                                                <div class="form-group my-2">
                                                    <input type="email" name="log-email" id="log-email" placeholder="Email" autocomplete="off" 
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-envelope-alt pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                                <!-- INPUT log-addres -->
                                                <div class="form-group my-2">
                                                    <input type="text" name="log-addres" id="log-addres" placeholder="Dirección" autocomplete="off" 
                                                        
                                                        class="px-5 py-3 pl-14 w-full h-12 rounded
                                                            font-medium text-base leading-5 outline-none
                                                            transition ease-in-out duration-200
                                                            focus:shadow-lg active:shadow-lg
                                                            bg-ciovainilla-100 text-cionegro
                                                            dark:shadow-grey-300">
                                                    <i class="uil uil-home pr-2 absolute top-2 left-4 h-12 text-xl text-left text-ciovainilla-900"></i>
                                                </div>

                                            </form>

											<button  href="#" type="submit"
                                                class="nav-link mt-4 rounded px-7 justify-center ">
                                                <span 
                                                    class="text-base font-semibold uppercase tracking-wider
                                                        rounded px-3 py-2
                                                        transition ease-in-out duration-100
                                                        bg-ciovainilla-300 text-ciorubor-900
                                                        hover:bg-ciorubor-900 hover:text-ciovainilla-300 hover:shadow">enviar</span>
                                            </button>
				      					</div>
			      					</div>
			      				</div>

			      			</div>
			      		</div>

			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
|
  </main>
</template>


<script>
/*
import Firebase from 'firebase';
import config from './../config.js';
let app = Firebase.initializeApp(config);
let db = app.database();
let usersRef = db.ref('users');

export default {
    name: 'App',
    firebase: {
        users:usersRef
    },
    data(){
        return{
            newUser:{
                id:'',
                name:'',
                lastname:'',
                phone:'',
                email:'',
                addres:''
            }
        }
    }
}
*/
</script>


<style scoped>

@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900');

body{
	font-family: 'Poppins', sans-serif;
	overflow-x: hidden;
}
.section{
  position: relative;
  width: 100%;
  display: block;
}
.full-height{
  min-height: 100vh;
}
[type="checkbox"]:checked,
[type="checkbox"]:not(:checked){
  position: absolute;
  left: -9999px;
}
.checkbox:checked + label,
.checkbox:not(:checked) + label{
  position: relative;
  display: block;
  text-align: center;
  width: 60px;
  height: 16px;
  border-radius: 8px;
  padding: 0;
  margin: 10px auto;
  cursor: pointer;
  background-color: #FFE285;
}
.checkbox:checked + label:before,
.checkbox:not(:checked) + label:before{
  position: absolute;
  display: block;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  color: #FFE285;
  background-color: #62182C;
  font-family: 'unicons';
  content: '\eb4f';
  z-index: 20;
  top: -10px;
  left: -10px;
  line-height: 36px;
  text-align: center;
  font-size: 24px;
  transition: all 0.5s ease;
}
.checkbox:checked + label:before {
  transform: translateX(44px) rotate(-270deg);
}


.card-3d-wrap {
  position: relative;
  width: 440px;
  max-width: 100%;
  height: 600px;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  perspective: 800px;
  margin-top: 60px;
}
.card-3d-wrapper {
  width: 100%;
  height: 100%;
  position:absolute;    
  top: 0;
  left: 0;  
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  transition: all 600ms ease-out; 
}
.card-front, .card-back {
  width: 100%;
  height: 100%;
  background-position: bottom center;
  background-repeat: no-repeat;
  background-size: 300%;
  position: absolute;
  border-radius: 6px;
  left: 0;
  top: 0;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -o-backface-visibility: hidden;
  backface-visibility: hidden;
}
.card-back {
  transform: rotateY(180deg);
}
.checkbox:checked ~ .card-3d-wrap .card-3d-wrapper {
  transform: rotateY(180deg);
}
.center-wrap{
  position: absolute;
  width: 100%;
  padding: 0 35px;
  top: 50%;
  left: 0;
  transform: translate3d(0, -50%, 35px) perspective(100px);
  z-index: 20;
  display: block;
}


.form-group{ 
  position: relative;
  display: block;
    margin: 0;
    padding: 0;
}
.form-style {
  padding: 13px 20px;
  padding-left: 55px;
  height: 48px;
  width: 100%;
  font-weight: 500;
  border-radius: 4px;
  font-size: 14px;
  line-height: 22px;
  letter-spacing: 0.5px;
  outline: none;
  color: #291b79;
  background-color: #1f2029;
  border: none;
  -webkit-transition: all 200ms linear;
  transition: all 200ms linear;
  box-shadow: 0 4px 8px 0 rgba(21,21,21,.2);
}
.form-style:focus,
.form-style:active {
  border: none;
  outline: none;
  box-shadow: 0 4px 8px 0 rgba(21,21,21,.2);
}
.input-icon {
    position: absolute;
    top: 0;
    left: 18px;
    height: 48px;
    font-size: 24px;
    line-height: 48px;
    text-align: left;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}

.form-group input:-ms-input-placeholder  {
    color: #c4c3ca;
    opacity: 0.7;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input::-moz-placeholder  {
    color: #c4c3ca;
    opacity: 0.7;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:-moz-placeholder  {
    color: #c4c3ca;
    opacity: 0.7;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input::-webkit-input-placeholder  {
    color: #c4c3ca;
    opacity: 0.7;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus:-ms-input-placeholder  {
    opacity: 0;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus::-moz-placeholder  {
    opacity: 0;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus:-moz-placeholder  {
    opacity: 0;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus::-webkit-input-placeholder  {
    opacity: 0;
    -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}

</style>