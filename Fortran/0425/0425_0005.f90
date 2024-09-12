integer,allocatable::a
a=10
call s(a)
print *,'pass'
contains
subroutine s(a)
integer::a
if(a/=10) print *,'err1'
end subroutine
end
