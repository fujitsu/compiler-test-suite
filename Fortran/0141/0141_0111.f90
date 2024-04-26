subroutine s1
   character(8,1) :: x/ 1_"12345678" / 
if (x/=1_"12345678") print *,101
end
call s1
print *,'pass'
end
