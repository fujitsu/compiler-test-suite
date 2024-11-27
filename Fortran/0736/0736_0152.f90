module m1
     type y
      integer,allocatable,dimension(:)::y1
     end type
end
subroutine sub(dproc,k)
 use m1
  interface 
     function dproc()
     use m1
     integer,allocatable::dproc(:)
     end function
  end interface
  type(y),dimension(k)::v
  integer,allocatable,dimension(:)::z
  i1=1;i2=2;i3=3
  allocate(z(4));z=(/11,12,13,14/)
  v=y(z)
  v(i1:i3:i2)=y(dproc())
  if (any(v(1)%y1/=(/111,112,113,114/)))write(6,*) "NG"
  if (any(v(2)%y1/=(/ 11, 12, 13, 14/)))write(6,*) "NG"
  if (any(v(3)%y1/=(/111,112,113,114/)))write(6,*) "NG"
  if (any(shape(v(1)%y1)/=(/4/)))write(6,*) "NG"
  if (any(shape(v(2)%y1)/=(/4/)))write(6,*) "NG"
  if (any(shape(v(3)%y1)/=(/4/)))write(6,*) "NG"
end
     function proc1() 
     use m1
     integer,allocatable::proc1(:)
     allocate(proc1(4))
     proc1=((/111,112,113,114/))
     end function
use m1
  interface 
     function proc1()
     use m1
     integer,allocatable::proc1(:)
     end function
  end interface
k=3
call sub(proc1,k)
print *,'pass'
end
