  call ssub01("a","b","c") 
  print *,"pass"

contains
  subroutine ssub01(chr01,chr02,chr03)
    character :: chr01
    character :: chr02(1)
    character :: chr03
    if (chr01 .ne. "a") print *,"err"
    if (chr02(1) .ne. "b") print *,"err"
    if (chr03 .ne. "c") print *,"err"
  end subroutine
end 
