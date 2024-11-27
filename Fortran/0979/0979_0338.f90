module mod01
contains
  subroutine sub01()
    call ssub01("a") 
  contains
    subroutine ssub01(chr01)
      character chr01(1)
      if (chr01(1) .ne. "a") print *,"err"
    end subroutine
  end subroutine
end module mod01

  use mod01
  call sub01() 
  print *,"pass"
end 
