  SUBROUTINE x(k)
    CHARACTER(1):: c(k)
if (k/=2) then
     c(2) = c(1)
endif
  END
call x(2)
print *,'pass'
end
