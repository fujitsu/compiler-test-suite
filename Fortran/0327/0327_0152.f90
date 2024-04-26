 integer ::x
 x=10

 call sub1(x)
 print *,'pass'
 end

 subroutine sub1(a)
 integer :: a

 call sub2(a)

 contains
 subroutine sub2(b)
 integer :: b
 a=5
 b=4
 end subroutine sub2

end subroutine sub1
