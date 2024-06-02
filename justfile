_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers templates/revolt.tera
  whiskers --list-flavors -o plain | while read -r flavor; do
    cp templates/Custom.css themes/catppuccin-$flavor/
  done

