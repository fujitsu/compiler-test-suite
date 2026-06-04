!$OMP PARALLEL default(none) 
!$OMP sections
!$OMP section
!$OMP section
!$OMP END sections
!$OMP END PARALLEL
print *,'pass'
end
