call s1(-1_1)
call s2(-1_2)
call s3(-1_4)
call s4(-1_8)
print *,'pass'
contains
subroutine s1(i)
integer(1)::i
integer(1)::a(i)
if(sizeof(a)/=0) print *,'err1'
end subroutine
subroutine s2(i)
integer(2)::i
integer(2)::a(i)
if(sizeof(a)/=0) print *,'err1'
end subroutine
subroutine s3(i)
integer(4)::i
integer(4)::a(i)
if(sizeof(a)/=0) print *,'err1'
end subroutine
subroutine s4(i)
integer(8)::i
integer(8)::a(i)
if(sizeof(a)/=0) print *,'err1'
end subroutine
end
