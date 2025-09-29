# NIMWEIS (Nimble webui + svelte) template

nimweis is nimble nim-webui, and svelte with vite. this is your starter pack for developing desktop GUI alternative for electronjs or tauri.

### how to use this template ?

use degit `npx degit IDNatte/nimweis <your-project-name>` for scaffold this template. and done, just start poking around in the project.

### where should i start poking around ?

- `nimweis.nimble`
  - in here you can find common project meta like name, owner, version, etc.
    change accordingly there are already marked comment to where you can change for guide.
- `src/nimweis.nim`
  - in here is your main project entrypoint, you can change file `nimeweis.nim` as your project name e.g, banana_conter.nim
- `src-frontend/package.json`
  - the same as `nimweis.nimble` that is your average nodejs project package.json as you expected, you can tweak it as however you like
- `src-frontend/src/assets/*`
  - is where your frontend assets
- `src-frontend/src/components/*`
  - is where your svelte component
- `src-frontend/src/lib/*`
  - is where your frontend library, like routes as you can see there, svelte .svelte.ts store, or any other library.
- `src-frontend/src/route/*`
  - is where your svelte page

generally you can see around the project scaffold in this template.

### i see you use your path aliases there.

yep in the `front-end` i'm using path aliases for import here the list because why using normal path ?? easier to use path aliases right ?

- `@lib` = `'./src/lib/*'`
- `@assets` = `./src/assets/*`
- `@routes` = `./src/routes/*`
- `@components` = `./src/components/*`

### how do i start this project ?

after using `npx degit IDNatte/nimweis <your-project-name>` :

- go to `src-frontend`,
- install the front-end dependency (mine is using `yarn` / `yarn install`) but you can use any package you like.
- then you can run `<your package manager> run dev`
- on another terminal you can run `nimble run -d:debug` to get in to nim-webui debug mode (it is explained in `src/nimweis.nim` file)

### how do i build this ?

you need to build the front-end first, then you can build the binary from nim like e.g. `nim c -d:<release / danger> -d:strip --debugInfo:off --mm:orc --opt:size --passL:-flto --passL:-fuse-linker-plugin --out:build/ src/<your project main entrypoint>.nim`
or `nimble build -d:<release / danger> -d:strip --debugInfo:off --mm:orc --opt:size --passL:-flto --passL:-fuse-linker-plugin`. Btw this flag is optimized to result small size binary you can use whatever flag as you like or need.

### what is this project tech-stack ?

#### front-end

- [svelte-ts vite template](https://vite.dev/guide/#trying-vite-online)
- [vite](https://vite.dev/)
- [svelte5-router](https://github.com/mateothegreat/svelte5-router)

#### back-end (windowing)

- [nim-webui](https://github.com/webui-dev/nim-webui) ([fork version of mine](https://github.com/IDNatte/nim-webui))
- [embassets](https://github.com/IDNatte/embassets)
