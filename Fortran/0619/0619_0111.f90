subroutine s1(k)
integer a(100000)
a=1
write(1,asynchronous='yes',id=k1) a+3
k=k1
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
call s1(k)
call s2
kk=k+1
wait(1,id=kk-1)
rewind 1
call chk
print *,'pass'
end
subroutine chk
integer a(100000)
read(1) a
if (any(a/=4))print *,101
end
