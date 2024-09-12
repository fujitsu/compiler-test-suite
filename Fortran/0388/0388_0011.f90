module mod
 protected p1
 procedure (px1),pointer :: p1,p2
 protected p2
 contains 
   function px1(i) result(r)
    character(i)::r
    r='xy'
   end function
   subroutine s1
    p1=>null()
   end subroutine
   subroutine s2
    nullify(p2)
   end subroutine
   subroutine s3
    p1=>px1
   end subroutine
   subroutine s4
    p2=>px1
   end subroutine
recursive subroutine s
i=2
call s1
if (associated(p1))print *,'error-01'
call s2
if (associated(p2))print *,'error-02'
call s3
if (p1(i)/='xy')print *,'error-003'
call s4
if (p2(i)/='xy')print *,'error-004'
end subroutine
end
use mod
call s
print *,'pass'
end
