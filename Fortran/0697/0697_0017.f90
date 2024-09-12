call s()
call s()
print *,'pass'
contains
subroutine s(a)
integer,dimension(:),optional::a
if(sizeof(a)/=0) print *,'err'
end subroutine
end
