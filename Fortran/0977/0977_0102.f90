subroutine s(i,k)
 type x
   integer,pointer::p1(:),p2(:)
 end type
 type (x):: v(2)
 integer,target::t1(3)
 integer,target::t2(4)
 t1=(/1,2,3/)
 t2=(/4,5,6,7/)
 select case(i)
  case (1)
   v(2)%p1=>t2(1:3:2)
   v(2)%p2=>t1(1:3:2)
end select
j=jfoo(v(k)%p1,v(k)%p2,i)
if (j/=i)write(6,*) "NG"
end
call s(1,2)
print *,'pass'
end
integer function jfoo(i1,i2,i)
integer i1(2),i2(2)
select case(i)
 case (1)
   if (i1(1)/=4)write(6,*) "NG"
   if (i1(2)/=6)write(6,*) "NG"
   if (i2(1)/=1)write(6,*) "NG"
   if (i2(2)/=3)write(6,*) "NG"
end select
jfoo=i
end
   

