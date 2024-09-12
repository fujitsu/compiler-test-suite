 subroutine sub1(a,b,n)
 real::a(:,:)
 real,pointer::b(:,:)
 real c(10)
 call sub2(a)
 call sub3(b)
 call sub4(c(1:10:n))
 end subroutine sub1

 subroutine sub2(a)
 real::a(2,3)
 a=2
 end subroutine sub2

 subroutine sub3(b)
 real::b(2,3)
 b=3
 end subroutine sub3

 subroutine sub4(c)
 real::c(5)
 c=4
 end subroutine

 interface
   subroutine sub1(a,b,n)
   real::a(:,:)
   real,pointer::b(:,:)
   end subroutine
 end interface
 real a(2,3)
 real,pointer::b(:,:)
 real,target::b1(2,3)
 b=>b1
 call sub1(a,b,2)
 print *,'ok'
 end
