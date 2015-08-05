if [[ -z "$RADIO_PLAYER" ]]; then
  RADIO_PLAYER="vlc"
fi

function radiozora_chill() {
  open http://chill.out.airtime.pro:8000/chill_a -a $RADIO_PLAYER
}

function radiozora_trance() {
  open http://trance.out.airtime.pro:8000/trance_a -a $RADIO_PLAYER
}
