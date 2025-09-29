##
## this is the main entry point of your nim webui + svelte
## to run this as debug mode you can add -d:debug to see your front-end at your browser
## this template including example of usage embassets (https://github.com/IDNatte/embassets) for embedding your html (front-end) assets
##

import std/[os, tables]
import webui

import embassets

const assetsPath = joinPath(parentDir(currentSourcePath()), "../frontend")
const includeAssets: seq[Table[string, string]] = embassets.embedAssets(assetsPath)

when isMainModule:
  let window = webui.newWindow()
  window.port = 18192

  when not defined(debug):
    let assets = embassets.loadAssets(includeAssets)
    window.rootFolder = assets
    window.show("index.html")

  when defined(debug):
    import std/strformat

    webui.setConfig(wcMultiClient, true)
    window.show("http://localhost:5173")

    echo fmt"[*] starting @ {window.url()}"

  webui.wait()
  webui.clean()
