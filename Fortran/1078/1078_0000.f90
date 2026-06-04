integer:: I=1
print *,"pass"
contains
subroutine sub()
!$OMP CRITICAL
 !$OMP TASK in_reduction(+:I)
  print *,I
 !$OMP endTASK
!$OMP END CRITICAL
 END
 END
