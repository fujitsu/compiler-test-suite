module mod1
real(KIND=8), private :: xx

contains
  subroutine Q
    integer, parameter :: NVal = 2

    DO I = 1, NVal
       xx = DBLE(i)+1
       call f()
    END DO

  end subroutine Q
  subroutine f()
  write(6,*) 'a = ',xx
  END subroutine f
end module mod1

program test
  use mod1
  call Q
end program test
