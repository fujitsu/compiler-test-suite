subroutine s(i)
parameter (k=sizeof(i))
if (k/=4) print *,"fail"
end
call s(1)
print *,'pass'
end
