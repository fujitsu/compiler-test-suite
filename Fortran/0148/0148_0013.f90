  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(k)
     read (8,*)c(1)
  END
    CHARACTER(1):: c(2)
open(8,delim='quote')
write(8,*)'123'
rewind 8
call x(2,c)
print *,'pass'
end
