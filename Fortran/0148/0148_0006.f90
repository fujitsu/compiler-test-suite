  SUBROUTINE x(k,c)
    CHARACTER(*),INTENT(out):: c(k)
     c(1) = '123'
     c(2) = c(1)(2:3)//'4'
     write(2,*)c
  END
    CHARACTER(3):: c(2)
open(2,delim='quote')
call x(2,c)
call w
print *,'pass'
end
subroutine w
character(3) r1,r2
rewind 2
read(2,*) r1,r2
if (r1/='123') print *,101 
if (r2/='234') print *,104
end
