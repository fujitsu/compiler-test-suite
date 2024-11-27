module m1
     type y
      integer,allocatable,dimension(:)::y1
     end type
end
subroutine sub(dproc,pproc,aproc,k)
 use m1
  interface 
     function dproc()
     use m1
     integer,allocatable::dproc(:)
     end function
     function pproc()
     use m1
     integer,pointer::pproc(:)
     end function
     function aproc()
     use m1
     integer::aproc(7)
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
  v(i1:i3:i2)=y((/211,212,213,214,215/))
  if (any(v(1)%y1/=(/211,212,213,214,215/)))write(6,*) "NG"
  if (any(v(2)%y1/=(/ 11, 12, 13, 14/)))write(6,*) "NG"
  if (any(v(3)%y1/=(/211,212,213,214,215/)))write(6,*) "NG"
  if (any(shape(v(1)%y1)/=(/5/)))write(6,*) "NG"
  if (any(shape(v(2)%y1)/=(/4/)))write(6,*) "NG"
  if (any(shape(v(3)%y1)/=(/5/)))write(6,*) "NG"
  v(i1:i3:i2)=y(pproc())
  if (any(v(1)%y1/=(/311,312,313,314,315,316/)))write(6,*) "NG"
  if (any(v(2)%y1/=(/ 11, 12, 13, 14/)))write(6,*) "NG"
  if (any(v(3)%y1/=(/311,312,313,314,315,316/)))write(6,*) "NG"
  if (any(shape(v(1)%y1)/=(/6/)))write(6,*) "NG"
  if (any(shape(v(2)%y1)/=(/4/)))write(6,*) "NG"
  if (any(shape(v(3)%y1)/=(/6/)))write(6,*) "NG"
  v(i1:i3:i2)=y(aproc())
  if (any(v(1)%y1/=(/411,412,413,414,415,416,417/)))write(6,*) "NG"
  if (any(v(2)%y1/=(/ 11, 12, 13, 14/)))write(6,*) "NG"
  if (any(v(3)%y1/=(/411,412,413,414,415,416,417/)))write(6,*) "NG"
  if (any(shape(v(1)%y1)/=(/7/)))write(6,*) "NG"
  if (any(shape(v(2)%y1)/=(/4/)))write(6,*) "NG"
  if (any(shape(v(3)%y1)/=(/7/)))write(6,*) "NG"
end
     function proc1() 
     use m1
     integer,allocatable::proc1(:)
     allocate(proc1(4))
     proc1=((/111,112,113,114/))
     end function
     function proc2()
     use m1
     integer,pointer::proc2(:)
     allocate(proc2(6))
     proc2=((/311,312,313,314,315,316/))
     end function
     function proc3()
     use m1
     integer::proc3(7)
     proc3=(/411,412,413,414,415,416,417/)
     end function
use m1
  interface 
     function proc1()
     use m1
     integer,allocatable::proc1(:)
     end function
     function proc2()
     use m1
     integer,pointer::proc2(:)
     end function
     function proc3()
     use m1
     integer::proc3(5)
     end function
  end interface
k=3
call sub(proc1,proc2,proc3,k)
print *,'pass'
end
