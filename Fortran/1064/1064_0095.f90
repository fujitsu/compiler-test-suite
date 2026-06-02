  subroutine s1
   complex:: c=0
   r=1
   c%im=r+1
if (abs(c-(0,2)) > 0.001) print *,101,c
end
call s1
print *,'pass'
end
