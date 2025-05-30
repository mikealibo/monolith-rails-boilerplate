/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './public/*.html',,
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}