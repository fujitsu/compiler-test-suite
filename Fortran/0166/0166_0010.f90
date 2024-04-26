  subroutine s1
   complex:: c
   r=1
   c%im=r+1
if (abs(c%im-(2,0)) > 0.001) print *,101,c
end
call s1
print *,'pass'
end
