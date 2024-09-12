integer b(4),c(4)
b=99
c=-99
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL private(b,c) 
  b=(/1,0,1,0/)
  c=-1
  where (b==1)
    c=2
  end where
  if (any(c(1:3:2)/=2))print *,'error-1'
  if (any(c(2:4:2)/=-1))print *,'error-2'
!$OMP END PARALLEL
if (any(b/=99))print *,'error-3'
if (any(c/=-99))print *,'error-4'
print *,'pass'
end
