integer:: I=1
print *,"pass"
contains
subroutine sub()
 !$OMP CRITICAL
 !$OMP TASK
  print *,I
 !$OMP endTASK
 !$OMP END CRITICAL
 END
end
