module mod
abstract interface
  subroutine xx(k)
  end subroutine
end interface
contains
  recursive subroutine test
    procedure(xx),pointer:: p

    n = 1
    p=>inn


    call sub(p)

  contains 
    recursive subroutine inn(k)
      k=k+1
    end subroutine inn
  end subroutine test
end module mod

program main
  use mod
  call test
end program main
