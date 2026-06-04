integer a
a=10
!$OMP TASK shared(a)
!$OMP TASK firstprivate(a)
a=1000
!$OMP END TASK
!$OMP END TASK
print *,a
end
