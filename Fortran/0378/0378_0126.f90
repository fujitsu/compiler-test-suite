subroutine s(k)
parameter (i=sizeof(1))
dimension x(k)
if (sizeof(x)/=8)print *,101,sizeof(x)
if (i        /=4)print *,104,i
end
call s(2)
print *,'pass'
end
