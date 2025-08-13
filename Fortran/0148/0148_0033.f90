  SUBROUTINE x(k,c1)
    CHARACTER(*),INTENT(out):: c1(k,k+1,k+2)
namelist /nam/ c1
read (18,nam)
end subroutine
    CHARACTER(1):: c1(2,3,4)
namelist /nam/ c1
open(18,delim='quote')
c1='1'
write(18,nam)
rewind 18

call x(2,c1)
if (any(c1/='1')) print *,101
print *,'pass'
end
