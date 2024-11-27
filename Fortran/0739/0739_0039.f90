 integer,pointer ::p0
call sub
    if (p0/=100)write(6,*) "NG"
print *,'pass'
contains
    subroutine sub
    integer,pointer ::p1
    allocate (p0);p0=100
    p1=>p0
    if (p1/=100)write(6,*) "NG"
    end subroutine
end
