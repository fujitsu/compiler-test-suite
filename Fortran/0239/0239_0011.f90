module m1
 type b1
    integer::b11
    contains
     final:: b_array_sub
     final:: b_elm_sub
 end type
 type,extends(b1):: c1
     integer::c11
     type(b1):: c12
     type(b1),pointer:: c1p=>null()
     type(b1):: c13(-2:0,-3:0,-1:0)
    contains
     final:: c_array_sub
     final:: c_scalar_sub
 end type
 type(c1),allocatable::d(:,:,:)
 integer::f1=0,f2=0,f3=0,f4=0
 contains
 subroutine b_array_sub(x)
 type(b1)::x(:,:,:)
  f1=f1+1
 end subroutine
 elemental subroutine b_elm_sub(x)
 type(b1),intent(in)::x
  interface 
     pure subroutine print(x)
        import b1
        type(b1),intent(in)::x
     end subroutine
  end interface
  call print(x)
 end subroutine

 subroutine c_array_sub(x)
 type(c1)::x(:,:,:)
  if (any(lbound(x)/=[1,1,1])) print *,300001
  if (any(ubound(x)/=[1,5,3])) print *,300002
  f3=f3+1
 end subroutine
 subroutine c_scalar_sub(x)
 type(c1)::x
  f4=f4+1
 end subroutine
end
subroutine s1
use m1
allocate (d(4:4,-1:3,-3:-1),stat=kk)
if (kk/=0) print *,101
k=1
do k1=4,4
do k2=-1,3
do k3=-3,-1
  d(k1,k2,k3)%c11=k
  d(k1,k2,k3)%c12%b11=k+1
  k=k+2
do n1=-2,0
do n2=-3,0
do n3=-1,0
 d(k1,k2,k3)%c13(n1,n2,n3)%b11=k
 k=k+1
end do
end do
end do
k=k+1
end do
end do
end do

deallocate(d)
end
use m1
call s1
if (f1/=16) print *,8001,f1
if (f2/=15) print *,8002,f2
if (f3/=1) print *,8003,f3
if (f4/=0) print *,8004,f4
print *,'pass'
end

      subroutine print(x)
      use m1
        type(b1),intent(in)::x
  f2=f2+1
     end subroutine
