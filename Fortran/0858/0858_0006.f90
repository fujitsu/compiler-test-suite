save ::I
 !$OMP CRITICAL
 !$OMP TASK
  print *,I
 !$OMP endTASK
 !$OMP END CRITICAL
 END
