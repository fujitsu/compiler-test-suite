subroutine s1
integer,pointer,volatile::e(:)
allocate(e(4),source=[1,2,3,4])
call test(e)
if (any(e/=[1,2,3,4])) print *,102
contains
subroutine test(v)
integer,asynchronous,value::v(4)
if (any(v/=[1,2,3,4])) print *,101
v=0
end subroutine
end
call s1
print *,'pass'
end
