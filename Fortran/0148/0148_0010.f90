  SUBROUTINE x(c)
    CHARACTER(*),INTENT(out):: c(2)
     c(1) = '123'
     c(2) = c(1)(2:3)//'4'
     write(1)c
  END
    CHARACTER(3):: c(2)
call x(c)
call w
print *,'pass'
end
subroutine w
character(3) r1,r2
rewind 1
read(1) r1,r2
if (r1/='123') print *,101 
if (r2/='234') print *,104
end