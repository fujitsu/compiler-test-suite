subroutine s1
implicit integer(c)
integer a(3)
do concurrent = 1,3
  a(concurrent)=concurrent
end do
if (any(a/=[1,2,3])) print *,101
end
call s1
print *,'pass'
end

