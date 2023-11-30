<script setup>

</script>

<template>
  <main class="">
    <Header></Header>
  </main>
  <div>
    <form action="insert.php" method="post" class="flex justify-center">

<div class=" grid grid-cols-1 py-2">
    <form action="../php/register.php" method="post"></form>

    <!-- INPUT DNI -->
    <div class="relative m-2">
        <input type="text" id="id" name="id" placeholder="12345678" maxlength="8" minlength="8" required
            class="peer p-4 block w-full rounded-lg text-sm placeholder:text-transparent border-2 border-ciorosa-600 focus:border-ciorosa-600 hover:border-ciorosa-600 active:border-ciorosa-600
        focus:pt-6 focus:pb-2
        [&:not(:placeholder-shown)]:pt-6
        [&:not(:placeholder-shown)]:pb-2
        autofill:pt-6
        autofill:pb-2">

        <label for="id"
            class="absolute top-0 start-0 p-4 h-full text-sm truncate pointer-events-none transition ease-in-out duration-100  
                    peer-disabled:opacity-20
                    peer-disabled:pointer-events-none
                    peer-focus:text-xs
                    peer-focus:-translate-y-1.5
                    peer-focus:text-ciorosa-600
                    peer-[:not(:placeholder-shown)]:text-xs
                    peer-[:not(:placeholder-shown)]:-translate-y-1.5
                    peer-[:not(:placeholder-shown)]:text-ciokolate-negro">DNI</label>
    </div>

    <!-- INPUT NOMBRE -->
    <div class="relative m-2">
        <input type="text" id="name" name="name" placeholder="Nombres" required
            class="peer p-4 block w-full rounded-lg text-sm placeholder:text-transparent border-ciokolate-rosa-600 border-2  focus:border-ciokolate-rosa-600
        focus:pt-6 focus:pb-2
        [&:not(:placeholder-shown)]:pt-6
        [&:not(:placeholder-shown)]:pb-2
        autofill:pt-6
        autofill:pb-2">

        <label for="name"
            class="absolute top-0 start-0 p-4 h-full text-sm truncate pointer-events-none transition ease-in-out duration-100  
                    peer-disabled:opacity-50 peer-disabled:pointer-events-none
                    peer-focus:text-xs
                    peer-focus:-translate-y-1.5
                    peer-focus:text-ciokolate-negro
                    peer-[:not(:placeholder-shown)]:text-xs
                    peer-[:not(:placeholder-shown)]:-translate-y-1.5
                    peer-[:not(:placeholder-shown)]:text-ciokolate-negro">Nombres
        </label>
    </div>

    <!-- INPUT APELLIDOS -->
    <div class="relative m-2">
        <input type="text" id="lastName" name="lastName" placeholder="Apellidos" required
            class="peer p-4 block w-full rounded-lg text-sm placeholder:text-transparent border-ciokolate-rosa-600 border-2  focus:border-ciokolate-rosa-600
        focus:pt-6 focus:pb-2
        [&:not(:placeholder-shown)]:pt-6
        [&:not(:placeholder-shown)]:pb-2
        autofill:pt-6
        autofill:pb-2">

        <label for="lastName"
            class="absolute top-0 start-0 p-4 h-full text-sm truncate pointer-events-none transition ease-in-out duration-100  
                    peer-disabled:opacity-50 peer-disabled:pointer-events-none
                    peer-focus:text-xs
                    peer-focus:-translate-y-1.5
                    peer-focus:text-ciokolate-negro
                    peer-[:not(:placeholder-shown)]:text-xs
                    peer-[:not(:placeholder-shown)]:-translate-y-1.5
                    peer-[:not(:placeholder-shown)]:text-ciokolate-negro">Apellidos</label>
    </div>

    <!-- INPUT TELEFONO -->
    <div class="relative m-2">
        <input type="text" id="phone" name="phone" placeholder="123456789" minlength="9" maxlength="9" required
            class="peer p-4 block w-full rounded-lg text-sm placeholder:text-transparent border-ciokolate-rosa-600 border-2  focus:border-ciokolate-rosa-600
        focus:pt-6 focus:pb-2
        [&:not(:placeholder-shown)]:pt-6
        [&:not(:placeholder-shown)]:pb-2
        autofill:pt-6
        autofill:pb-2">

        <label for="phone"
            class="absolute top-0 start-0 p-4 h-full text-sm truncate pointer-events-none transition ease-in-out duration-100  
                    peer-disabled:opacity-50 peer-disabled:pointer-events-none
                    peer-focus:text-xs
                    peer-focus:-translate-y-1.5
                    peer-focus:text-ciokolate-negro
                    peer-[:not(:placeholder-shown)]:text-xs
                    peer-[:not(:placeholder-shown)]:-translate-y-1.5
                    peer-[:not(:placeholder-shown)]:text-ciokolate-negro">N° de Telefono</label>
    </div>

    <!-- INPUT EMAIL -->
    <div class="relative m-2">
        <input type="email" id="email" name="email" placeholder="nombre@email.com" 
            class="peer p-4 block w-full rounded-lg text-sm placeholder:text-transparent border-ciokolate-rosa-600 border-2  focus:border-ciokolate-rosa-600
        focus:pt-6 focus:pb-2
        [&:not(:placeholder-shown)]:pt-6
        [&:not(:placeholder-shown)]:pb-2
        autofill:pt-6
        autofill:pb-2">

        <label for="email"
            class="absolute top-0 start-0 p-4 h-full text-sm truncate pointer-events-none transition ease-in-out duration-100  
                    peer-disabled:opacity-50 peer-disabled:pointer-events-none
                    peer-focus:text-xs
                    peer-focus:-translate-y-1.5
                    peer-focus:text-ciokolate-negro
                    peer-[:not(:placeholder-shown)]:text-xs
                    peer-[:not(:placeholder-shown)]:-translate-y-1.5
                    peer-[:not(:placeholder-shown)]:text-ciokolate-negro">Email</label>
    </div>

    <!-- INPUT SITIO WEB / LINKEDLN -->

    <div class="flex justify-center my-3">
        <button type="submit" name="enviar" id="enviar" value="Registrarse"
            class="p-2 bg-ciokolate-rosa text-ciokolate-blanco
                hover:bg-ciokolate-rosa-600 active:bg-ciokolate-rosa-700 focus:outline-none focus:ring focus:ring-ciokolate-rosa-300
                transition ease-in-out duration-75">Registrarse</button>
    </div>

</div>


</form>
</div>

</template>