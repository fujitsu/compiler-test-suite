subroutine s1(a,b)
  integer a(1000),b(1000)
  call s2(a+b)
end
subroutine s2(c)
integer c(1000)
if (any(c/=3)) print *,101
end
  integer a(1000),b(1000)
a=1
b=2
call s1(a,b)
print *,'pass'
end
