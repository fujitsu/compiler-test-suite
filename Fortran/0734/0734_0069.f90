  module m1
    contains
    subroutine M1_SUB() ; write(31,*) 99 ; end subroutine
  end module
  module m2
    use m1
    contains
    subroutine sub ; call M1_SUB() ; end subroutine
  end module
  program main
  use m2,ONLY:sub
  call sub
  rewind 31
  read(31,*) kk;if (kk/=99)print *,'error'
  print *,'pass'
  end
