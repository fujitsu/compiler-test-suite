module mod
INTEGER :: I
end
subroutine sub()
use mod
 !$OMP CRITICAL
 !$OMP TASK
  print *,I
 !$OMP endTASK
 !$OMP END CRITICAL
 END
print *,"pass"
end
