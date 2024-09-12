integer:: I=1
print *,"pass"
contains
subroutine sub()
 !$OMP TASK
  print *,I
 !$OMP endTASK
 END
 END
