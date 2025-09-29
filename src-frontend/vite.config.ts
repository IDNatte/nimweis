import { defineConfig, type AliasOptions } from "vite";
import { svelte } from "@sveltejs/vite-plugin-svelte";
import tailwindcss from "@tailwindcss/vite";
import path from "path";

// https://vite.dev/config/
export default defineConfig({
  plugins: [svelte(), tailwindcss()],
  build: {
    outDir: "../frontend",
    emptyOutDir: true,
  },
  resolve: {
    alias: {
      "@lib": path.resolve(__dirname, "./src/lib/"),
      "@assets": path.resolve(__dirname, "./src/assets/"),
      "@components": path.resolve(__dirname, "./src/components"),
      "@routes": path.resolve(__dirname, "./src/routes"),
    } as AliasOptions,
  },
  server: {
    proxy: {
      "/webui.js": "http://localhost:18192",
    },
  },
});
