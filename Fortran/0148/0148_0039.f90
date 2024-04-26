  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(k)
  entry      y(k,c)
     c(1) = '1'
     c(2) = c(1)
  END
    CHARACTER(1):: c(2)
c='x'
call x(2,c)
if (c(1)/='1') print *,101
if (c(2)/='1') print *,102
c='x'
call y(2,c)
if (c(1)/='1') print *,101
if (c(2)/='1') print *,102
print *,'pass'
end
