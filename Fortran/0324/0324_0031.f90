call sub001()
print *,'pass'
end

 module mod
 data i/1/
 contains
 subroutine sub()
 end subroutine
 subroutine sub1()
 if (1.eq.2) print *,i
 end subroutine
 end

subroutine sub001()
 use mod
 call sub()
 call sub1()
 end
