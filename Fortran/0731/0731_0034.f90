module mymod
  public :: daft
  integer , parameter , public :: rk = selected_real_kind (P=6)
contains
  subroutine daft (arr)
    real (kind=rk) , dimension(:) , intent(in) :: arr
    if(abs(sum ( arr )-10)>0.0001)write(6,*) "NG"
    return
  end subroutine daft
end module mymod
program main
  use mymod
  integer :: i
  call daft ( (/ ( real (1.0,kind=rk) , i=1,10 ) /) )
  call daft ( (/ ( 1.0_rk , i=1,10 ) /) )
print *,'pass'
end program main

