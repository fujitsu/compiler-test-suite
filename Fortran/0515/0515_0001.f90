subroutine sub()
common /a/ I
 !$OMP CRITICAL
 !$OMP TASK
  print *,I
 !$OMP endTASK
 !$OMP END CRITICAL
 END
print *,"pass"
end
