subroutine s(i,k1,k2)
 interface
   pure subroutine errtra
   end subroutine
 end interface
 type x
   integer,pointer::p1(:),p2(:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3)=(/1,2,3/)
 integer,target::t2(4)=(/4,5,6,7/)
 integer j(k2)
 allocate(v(k2))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/11,12/)
   v(2)%p2=>t1(1:3:2)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
k=2
j=jfoo(v(k)%p1,v(k)%p2,n1,n2,i)
if (j(1)/=i+11+1)write(6,*) "NG"
if (j(2)/=i+12+3)write(6,*) "NG"
deallocate(v)
contains
elemental integer function jfoo(i1,i2,n1,n2,i)
integer,intent(in):: i1,i2,n1,n2,i
select case(i)
 case (1)
end select
jfoo=i+i1+i2
end function
end
call s(1,2,2)
print *,'pass'
end
   

