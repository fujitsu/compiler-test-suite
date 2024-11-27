module m1
  type x
    integer,allocatable::a(:)
  end type
  type xx
    type (x),allocatable::aa(:)
  end type
contains
 subroutine chk1(z)
  type(xx)::z(:)
  do i=1,size(z)
  do ii=1,size(z(i)%aa)
  if (any(z(i)%aa(ii)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%aa(ii)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%aa(ii)%a)/=(/-5/)))write(6,*) "NG"
  end do
  end do
 end subroutine
 subroutine chk2(z)
  type(xx)::z(:)
  do i=1,size(z)
  do ii=1,size(z(i)%aa)
  if (any(z(i)%aa(ii)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%aa(ii)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%aa(ii)%a)/=(/-5/)))write(6,*) "NG"
  end do
  end do
 end subroutine
 subroutine chk1s(z)
  type(xx)::z
  do ii=1,size(z%aa)
  if (any(z%aa(ii)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%aa(ii)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%aa(ii)%a)/=(/-5/)))write(6,*) "NG"
  end do
 end subroutine
 subroutine chk2s(z)
  type(xx)::z
  do ii=1,size(z%aa)
  if (any(z%aa(ii)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%aa(ii)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%aa(ii)%a)/=(/-5/)))write(6,*) "NG"
  end do
 end subroutine
end
subroutine sub(pproc,dproc)
 use m1
  interface 
     function dproc()
     use m1
     type(x),allocatable::dproc(:)
     end function
     function pproc()
     use m1
     type(x),pointer::pproc(:)
     end function
  end interface
  type(xx)::v(3)
  v=xx(dproc())
  call chk1(v)
  v=xx(pproc())
  call chk2(v)
  call chk1s(xx(dproc()))
  call chk2s(xx(pproc()))
end
  interface 
     function proc1()
     use m1
     type(x),allocatable::proc1(:)
     end function
     function proc2()
     use m1
     type(x),pointer::proc2(:)
     end function
  end interface
call sub(proc1,proc2)
print *,'pass'
end
     function proc1()
     use m1
     type(x),allocatable::proc1(:)
     allocate(proc1(5))
     do jj=1,5
      allocate(proc1(jj)%a(-5:-3))
      proc1(jj)%a=(/1,2,3/)
     end do
     end function
     function proc2()
     use m1
     type(x),allocatable::proc2(:)
     allocate(proc2(5))
     do jj=1,5
      allocate(proc2(jj)%a(-5:-3))
      proc2(jj)%a=(/1,2,3/)
     end do
     end function
