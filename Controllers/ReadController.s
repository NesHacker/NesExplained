.proc ReadController
  ; Initialize the output memory
  lda #1
  sta $20

  ; Send the latch pulse down to the 4021
  sta $4016
  lda #0
  sta $4016

  ; Read the buttons from the data line
read_loop:
  lda $4016
  lsr a
  rol $20
  bcc read_loop

  rts
.endproc
