  integer,parameter::k=2
  type ty
    integer :: x  =9
    complex(k) :: y=(2.3,8.1)
    real(k) :: z  =2
  end type
  TYPE (ty) :: t1,t2
  OPEN(2,file='fort.2',form="unformatted")
  WRITE(2) t1

  rewind 2

  read(2)t2 
if( t2%x.ne.9  ) print*,101
if( t2%z.ne.2  ) print*,102
if( abs(t2%y-   (2.3,8.1))>0.01  ) print*,103
print*,"pass"

end

