   function px1() result(r)
    character(2)::r
    r='xy'
   end function
recursive subroutine x
 character(2),external,pointer :: p1
 procedure(character(2))::px1
 p1=> px1
 if (p1()/='xy')print *,'error-1'
end subroutine
call x
print *,'pass'
end
