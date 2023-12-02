/** @type {import('tailwindcss').Config} */
export default {
  mode: [
    'jit',
  ],
  darkMode: [
    'class',
  ],

  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],

  theme: {
    extend: {
      colors:{
        'cioblanco': '#F1F1FB',
        'cionegro': '#12070A',

        'ciocrema-25': '#F2E4DF',
        'ciocrema-50': '#E9CFC3',
        'ciocrema-100': '#DEB7A6',
        'ciocrema-200': '#D39E88',
        'ciocrema-300': '#C8866A',
        'ciocrema-400': '#BD6E4C',
        'ciocrema-500': '#A45C3D',
        'ciocrema-600': '#864B32',
        'ciocrema-700': '#683B27',
        'ciocrema-800': '#4A2A1C',
        'ciocrema-900': '#2C1911',

        'ciorosa-100': '#FBC6D4',
        'ciorosa-200': '#F8A0B8',
        'ciorosa-300': '#F57A9B',
        'ciorosa-400': '#F2527D',
        'ciorosa-500': '#EF2E62',
        'ciorosa-600': '#E41149',
        'ciorosa-700': '#BE0E3D',
        'ciorosa-800': '#980B31',
        'ciorosa-900': '#720824',

        'ciorubor-100': '#F2CED8',
        'ciorubor-200': '#EAAEBE',
        'ciorubor-300': '#E28DA4',
        'ciorubor-400': '#D96C89',
        'ciorubor-500': '#D14D70',
        'ciorubor-600': '#C33259',
        'ciorubor-700': '#A22A4A',
        'ciorubor-800': '#82213B',
        'ciorubor-900': '#62182C',

        'ciovainilla-100': '#FFF5D6',
        'ciovainilla-200': '#FFEBA7',
        'ciovainilla-300': '#FFE285',
        'ciovainilla-800': '#B88D00',
        'ciovainilla-900': '#8F6D00',
      
      }
    },
  },

  plugins: [],
}

