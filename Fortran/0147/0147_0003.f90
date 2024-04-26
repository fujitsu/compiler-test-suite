integer,target::a1(1)=1
call s1(a1,a1)
print *,'pass'
contains
subroutine s1(a1,a2)
integer,target::a1(1),a2(1)
a1(1)=a2(1)
end subroutine
end
