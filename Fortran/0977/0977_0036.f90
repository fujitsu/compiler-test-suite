subroutine s(i,k)
 type x
   integer,pointer::p1(:),p2(:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3)=(/1,2,3/)
 pointer(n1,d1)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/11,12/)
   v(2)%p2=>t1(1:3:2)
end select
n1=loc(v(2)%p1)
j=jf(v(k)%p1,n1,i)
if (j/=i)write(6,*) "NG"
deallocate(v)
end
call s(1,2)
print *,'pass'
end
integer function jf(i1,n1,i)
integer i1(2)
 pointer(n1,d1)
select case(i)
 case (1)
   if (i1(1)/=11)write(6,*) "NG"
   if (i1(2)/=12)write(6,*) "NG"
   if (loc(i1)/=n1)write(28,*) i,'i1 copied'
end select
jf=i
end
