subroutine s1
integer(8)::p
integer::x
x=1
p=loc(x)
block
asynchronous:: x
if (p/=loc(x)) print *,101
x=2
end block
if (x/=2) print *,102
end
call s1
print *,'pass'
end
