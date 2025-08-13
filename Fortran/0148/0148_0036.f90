  SUBROUTINE x(k,c1)
    CHARACTER(*),INTENT(out):: c1(k)
namelist /nam/ c1
read (21,nam)
if (c1(1)/='1') print *,101
end subroutine
    CHARACTER(1):: c1(2)
namelist /nam/ c1
open(21,delim='quote')
c1='1'
write(21,nam)
rewind 21

call x(2,c1)
if (any(c1/='1')) print *,101
print *,'pass'
end
