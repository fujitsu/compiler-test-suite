  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(k)
     c(1) = '1'
     c(3) = c(1)
  END
    CHARACTER(1):: c(2)
call x(2,c)
print *,'pass'
end
