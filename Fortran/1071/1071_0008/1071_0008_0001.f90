subroutine sub(p)
external p
n=0

call p(n)
if (n==1) then
   print *,'PASS'
else
   print *,'NG1'
endif

end
