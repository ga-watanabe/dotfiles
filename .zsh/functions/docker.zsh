function dka() {
  docker attach $(docker ps | peco | cut -d' ' -f 1)
}
