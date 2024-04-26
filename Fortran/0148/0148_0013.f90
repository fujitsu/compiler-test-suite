  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(k)
     read (1,*)c(1)
  END
    CHARACTER(1):: c(2)
open(1,delim='quote')
write(1,*)'123'
rewind 1
call x(2,c)
print *,'pass'
end
