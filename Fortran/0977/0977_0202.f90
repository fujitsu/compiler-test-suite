subroutine s(i,k)
 type x
   integer,pointer::p1(:,:,:,:),p2(:,:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3,3/))
 integer,target::t2(4,4,4,4)=reshape((/(i,i=1,64*4)/),(/4,4,4,4/))
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 k1=1;k2=2
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3,3,2),v(2)%p2(3,3,3,2))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1(:,::2,:,:),n1,n2,i)
if (j/=i)write(6,*) "NG"
deallocate(v)
end
call s(2,2)
print *,'pass'
end
integer function jfoo(i1,n1,n2,i)
integer i1(18*2),i2(18*2)
integer,parameter::r(18*2)=(/1,2,3,7,8,9,10,11,12,16,17,18,19,20,21,25,26,27,28,29,30,34,35,36,37,38,39,43,44,45,46,47,48,52,53,54/)

 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (2)
   if (any(i1/=r))write(6,*) "NG"
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

