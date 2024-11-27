 call sub01()
 print *,'pass'
 end

 module mod1
 integer i
 contains 
 subroutine mod1_sub01()
 i=10
 end subroutine
 subroutine mod1_sub02(j)
 j=20
 end subroutine
 end
 subroutine sub01()
 use mod1
 call mod1_sub01()
 if (i.ne.10) write(6,*) "NG"
  call mod1_sub02(i)
 if (i.ne.20) write(6,*) "NG"
 end 
