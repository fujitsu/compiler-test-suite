integer,pointer::p0
allocate(p0)
call s1
print *,'pass'
contains
subroutine s1
integer,pointer::p1
integer,target::t1
p1=>t1
deallocate(p0)
end subroutine
end

