module mod
  type tp1
     integer :: ma = 3
     integer :: mb(3) = 4
     contains 
       procedure,nopass :: fff=> func
       generic::ggg=>fff
       final::fsub
  end type tp1
  contains
    integer function func ()
      func = 100
    end function func

    subroutine fsub (arg)
      type(tp1) arg
      arg%ma = 10
    end subroutine fsub
end module

program test
  use mod
  integer :: pia = 50
  type(tp1) tt
  integer :: pib = 60
  type(tp1) tt2

  print *, tt
  print *, tt%fff()
  print *, tt%ggg()

  call fsub(tt)

  print *, tt
  print *, tt2

  print *, pia
  print *, pib

end program test
