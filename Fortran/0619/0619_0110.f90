subroutine s1
integer a(100000)
a=1
write(1,asynchronous='yes') a
end
subroutine s2
integer a(100000)
a=2
call sub(a)
end
subroutine sub(a)
integer a(*)
end

open(1,asynchronous='yes',form='unformatted')
call s1
call s2
wait(1)
rewind 1
call chk
print *,'pass'
end
subroutine chk
integer a(100000)
read(1) a
if (any(a/=1))print *,101
end
