subroutine s(i)
parameter (k=sizeof(i))
if (k/=4) call errtra
end
call s(1)
print *,'pass'
end
