  type xx
    character(0),allocatable :: c(:)  
  end type
  type yy
    integer,allocatable :: i(:)
  end type
  type(xx) :: x
  type(yy) :: y

  character(0) :: vc(1:2)
  integer      :: vi(1:0)

  x = xx(vc)
  y = yy(vi)  

  if (.not.allocated(x%c)) write(6,*) "NG"
  if (.not.allocated(y%i)) write(6,*) "NG"

 print *,'pass'
end
