subroutine s1(n)
character(n) :: v1
character(2) :: v2
if (v1%len/=2) print *,101
if (v2%len/=2) print *,102
end
call s1(2)
print *,'pass'
end
