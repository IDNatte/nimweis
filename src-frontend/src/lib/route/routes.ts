import type { RouteConfig } from "@mateothegreat/svelte5-router";

import HomePage from "@routes/home/HomePage.svelte";
import AboutPage from "@routes/about/AboutPage.svelte";

export const routes: RouteConfig[] = [
  {
    component: HomePage,
  },
  {
    path: "/index.html",
    component: HomePage,
  },
  {
    path: "/about",
    component: AboutPage,
  },
];
