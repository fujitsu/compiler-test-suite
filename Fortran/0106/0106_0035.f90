program main
  integer :: a1,a2
  a1=2
  a2=2
  call tt(a1)
  call ss(a2)
contains
  subroutine tt(d)
    integer:: d
    print *,a1,d
  end subroutine tt
  subroutine ss(d)
    integer,intent(in) :: d
    print *,d,a2
  end subroutine ss
end program main

