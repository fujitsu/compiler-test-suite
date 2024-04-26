  SUBROUTINE x(k,c)
    CHARACTER(*),INTENT(out):: c(2)
     c(1) = '1'
     c(2) = c(1)
  END
    CHARACTER(1):: c(2)
call x(2,c)
print *,'pass'
end
