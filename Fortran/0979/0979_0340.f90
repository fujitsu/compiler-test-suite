module mod01
contains
  subroutine sub01()
    call ssub01("a","b","c") 
  contains
    subroutine ssub01(chr01,chr02,chr03)
      character :: chr01(1)
      character :: chr02
      character :: chr03(1)
      if (chr01(1) .ne. "a") print *,"err"
      if (chr02 .ne. "b") print *,"err"
      if (chr03(1) .ne. "c") print *,"err"
    end subroutine
  end subroutine
end module mod01

  use mod01
  call sub01()
  print *,"pass"
end 
