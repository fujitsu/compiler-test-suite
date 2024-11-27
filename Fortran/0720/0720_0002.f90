   function px1() result(r)
    complex    ::r
    r=(1,2)
   end function
recursive subroutine x
 complex     ,external,pointer :: p1
 procedure(complex)::px1
 p1=> px1
 if (abs(p1()-(1,2))>0.001)print *,'error-1'
end subroutine
call x
print *,'pass'
end
