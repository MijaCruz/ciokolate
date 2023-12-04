<script setup>
import {ref} from "vue"
let themeMode = ""

// Verificar si el modo oscuro esta ACTIVADO
if (localStorage.theme === "dark" || (!("theme" in localStorage) && 
    window.matchMedia("(prefers-color-scheme: dark)").matches) ){
        document.documentElement.classList.add("dark")
        themeMode = "Claro"
} else {
    document.documentElement.classList.remove("dark")
    themeMode = "Oscuro"
}

// Obtenemos el valor del tema por defecto del S.O. (Sistema Operativo)
const toggleDarkMode = ref(document.documentElement.className ==="dark")


const changeDarkMode = () => {
    toggleDarkMode.value = document.documentElement.classList.toggle("dark")
    toggleDarkMode.value
        ? (localStorage.theme = "dark")
        : (localStorage.theme = "light")
    
    //console.log(toggleDarkMode.value)

    if (toggleDarkMode.value == true){
        themeMode = 'Claro'

    } else if (toggleDarkMode.value == false) {
        themeMode = 'Oscuro'
    }
    //console.log("modo " + themeMode)
    document.getElementById('modeTheme').innerText = themeMode

}

</script>

<template>
    <button class="text-center font-semibold py-2 px-4 rounded-full bg-cionegro text-cioblanco w-24 dark:bg-ciorosa-200 dark:text-ciorosa-900"
        @click="changeDarkMode"><span id="modeTheme">Oscuro</span>
    </button>
</template>