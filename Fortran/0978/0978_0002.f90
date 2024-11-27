module m1
contains
subroutine sp1(p1,p2,p3,p4,p5,p6,p11,p12,p13,p14,p15,p16,j,i)
   integer,pointer::p1(:,:)
   integer,pointer::p2(:,:)
   integer,pointer::p4(:,:)
   integer,pointer::p5(:,:)
   integer,pointer::p6(:,:)
   integer,allocatable::p3(:,:)
   integer,pointer::p11(:,:)
   integer,pointer::p12(:,:)
   integer,pointer::p14(:,:)
   integer,pointer::p15(:,:)
   integer,pointer::p16(:,:)
   integer,allocatable::p13(:,:)
k=1
call jfoo(p1(::k,:),p2,p3(:,::k),p4,p5(:,::k),p6,&
          p11,p12(::k,:),p13,p14(::k,:),p15,p16(::k,:),i,fa())
j=0
end subroutine
function fa() result(r)
integer r(6)
r=(/11,12,13,14,15,16/)
end function
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:)
   integer,pointer::p2(:,:)
   integer,allocatable::p3(:,:)
   integer,pointer::p4(:,:)
   integer,pointer::p5(:,:)
   integer,pointer::p6(:,:)
   integer,pointer::p11(:,:)
   integer,pointer::p12(:,:)
   integer,allocatable::p13(:,:)
   integer,pointer::p14(:,:)
   integer,pointer::p15(:,:)
   integer,pointer::p16(:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t2(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t3(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t4(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t11(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t12(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t13(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t14(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 allocate(v(k))
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p2(3,3))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p3(3,3))
   v(2)%p3=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p4(3,3))
   v(2)%p4=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p5(3,3))
   v(2)%p5=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p6(3,3))
   v(2)%p6=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p11(3,3))
   v(2)%p11=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p12(3,3))
   v(2)%p12=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p13(3,3))
   v(2)%p13=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p14(3,3))
   v(2)%p14=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p15(3,3))
   v(2)%p15=reshape((/(i,i=1,18*3)/),(/3,3/))
   allocate(v(2)%p16(3,3))
   v(2)%p16=reshape((/(i,i=1,18*3)/),(/3,3/))
end select
select case (kk) 
case (2)
 call sp1(v(k)%p1,v(k)%p2,v(k)%p3,v(k)%p4,v(k)%p5,v(k)%p6,&
          v(k)%p11,v(k)%p12,v(k)%p13,v(k)%p14,v(k)%p15,v(k)%p16,j,i)
case default
  write(6,*) "NG"
end select
deallocate(v)
end
call s(2,2,2)
print *,'pass'
end
subroutine jfoo(i1,i2,i3,i4,i5,i6,i11,i12,i13,i14,i15,i16,i,j16)
integer i1(6),i2(6),i3(6)
integer i4(6),i5(6),i6(6)
integer i11(6),i12(6),i13(6)
integer i14(6),i15(6),i16(6),j16(6)
integer,parameter::r(6)=(/2,5,8,11,14,17/)
integer,parameter::s(6)=(/1,2,3,4,5,6/)

select case(i)
case (2)
   if (any(i1/=s))print *,i1
   if (any(i2/=s))print *,i2
   if (any(i3/=s))print *,i3
   if (any(i4/=s))print *,i4
   if (any(i5/=s))print *,i5
   if (any(i6/=s))print *,i6
   if (any(i11/=s))print *,i11
   if (any(i12/=s))print *,i12
   if (any(i13/=s))print *,i13
   if (any(i14/=s))print *,i14
   if (any(i15/=s))print *,i15
   if (any(i16/=s))print *,i16
   if (any(j16/=s+10))print *,j16
   i1=0
case default
  write(6,*) "NG"
end select
end
   

