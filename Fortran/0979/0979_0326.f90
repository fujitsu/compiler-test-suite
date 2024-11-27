  call ssub01("a") 
  print *,"pass"

contains
  subroutine ssub01(chr01)
    character chr01(1)
    if (chr01(1) .ne. "a") print *,"err"
  end subroutine
end 
