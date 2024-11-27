subroutine s(i,k)
 type x
   integer,pointer::p1(:),p2(:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3)=(/1,2,3/)
 integer,target::t2(4)=(/4,5,6,7/)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/11,12/)
   v(2)%p2=>t1(1:3:2)
end select
j=jfoo(v(k)%p1,v(k)%p2,i)
if (j/=i)write(6,*) "NG"
deallocate(v)
end
call s(1,2)
print *,'pass'
end
integer function jfoo(i1,i2,i)
integer i1(2),i2(2)
select case(i)
 case (1)
   if (i1(1)/=11)write(6,*) "NG"
   if (i1(2)/=12)write(6,*) "NG"
   if (i2(1)/=1)write(6,*) "NG"
   if (i2(2)/=3)write(6,*) "NG"
end select
jfoo=i
end
   

