module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
  plugins: [
    ({ addVariant }) => {
      addVariant("has-turbo-frame-content", "&:has(turbo-frame:not(:empty))");
    },
  ],
};
