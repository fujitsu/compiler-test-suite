  integer,parameter::k=2
  type ty
    integer :: x 
    complex(k) :: y
    real(k) :: z  
  end type
  TYPE (ty) :: t1
    complex(k) :: y
t1%y=0
y=0
if (kind(real(t1%y))/=2) print *,201,real(t1%y,kind=4)
if (kind(real(y))/=2) print *,202,real(y,kind=4)
print*,"pass"

end
