common /a/i,j
data i/1/
call sub
if (i/=1)write(6,*) "NG"
print *,'pass'
end
subroutine sub
common /a/i,j
if (i/=1)write(6,*) "NG"
end
