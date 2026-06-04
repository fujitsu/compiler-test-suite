integer a(3)
 a=0
!$OMP TASK shared(a)
!$OMP TASK
 a=1
 print *,'TASK1',a
!$OMP END TASK
 print *,'TASK2',a
!$OMP END TASK
 print *,'TASK0',a
 end
