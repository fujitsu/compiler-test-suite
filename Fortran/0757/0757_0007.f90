  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(k,k+1,k+2)
if (1==1)then
   print *,c(2,3,4)
endif
     c(1,1,1) = '1'
     c(2,3,4) = c(1,1,1)
  END
    CHARACTER(1):: c(2,3,4)
call x(2,c)
print *,'pass'
end
