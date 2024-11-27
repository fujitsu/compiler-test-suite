module m1
  type x
    integer,allocatable::a(:)
  end type
contains
 subroutine chk1(z)
  type(x)::z(:)
  do i=1,size(z)
  if (any(z(i)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%a)/=(/-5/)))write(6,*) "NG"
  end do
 end subroutine
 subroutine chk2(z)
  type(x)::z(:)
  do i=1,size(z)
  if (any(z(i)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%a)/=(/1/)))write(6,*) "NG"
  end do
 end subroutine
 subroutine chk1s(z)
  type(x)::z
  if (any(z%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%a)/=(/-5/)))write(6,*) "NG"
 end subroutine
 subroutine chk2s(z)
  type(x)::z
  if (any(z%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%a)/=(/1/)))write(6,*) "NG"
 end subroutine
end
subroutine sub(pproc,dproc)
 use m1
  interface 
     function dproc()
     integer,allocatable::dproc(:)
     end function
     function pproc()
     integer,pointer::pproc(:)
     end function
  end interface
  type(x)::v(3)
  v=x(dproc())
  call chk1(v)
  v=x(pproc())
  call chk2(v)
  call chk1s(x(dproc()))
  call chk2s(x(pproc()))
end
  interface 
     function proc1()
     integer,allocatable::proc1(:)
     end function
     function proc2()
     integer,pointer::proc2(:)
     end function
  end interface
call sub(proc1,proc2)
print *,'pass'
end
     function proc1()
     integer,allocatable::proc1(:)
     allocate(proc1(-5:-3))
     proc1=(/1,2,3/)
     end function
     function proc2()
     integer,pointer::proc2(:)
     allocate(proc2(-5:-3))
     proc2=(/1,2,3/)
     end function
