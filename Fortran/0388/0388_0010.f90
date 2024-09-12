module mod
 protected p1
 character(2),external,pointer :: p1,p2
 protected p2
 contains 
   function px1() result(r)
    character(2)::r
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
end
recursive subroutine s
use mod
call s1
if (associated(p1))print *,'error-01'
call s2
if (associated(p2))print *,'error-02'
call s3
if (p1()/='xy')print *,'error-003'
call s4
if (p2()/='xy')print *,'error-004'
end
call s
print *,'pass'
end
