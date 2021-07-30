.proc ReadController
  ; Add some constants to improve readability
  LATCH = $4016
  CONTROLLER = $4016
  OUTPUT = $20

  ; Initialize the output memory
  lda #1
  sta OUTPUT

  ; Send the pulse down the LATCH line to record the buttons
  sta LATCH
  lda #0
  sta LATCH

  ; Read the buttons in order from the data line
  ; Order: A, B, Select, Start, Up, Down, Left, & Right
read_loop:
  lda CONTROLLER
  lsr a
  rol OUTPUT
  bcc read_loop

  rts
.endproc
