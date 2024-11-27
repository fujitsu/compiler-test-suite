  call sub01() 
  print *,"pass"
end 

subroutine sub01()
  call msub01("a") 
contains
  subroutine msub01(chr01)
    character chr01(1)
    if (chr01(1) .ne. "a") print *,"err"
  end subroutine
end subroutine
