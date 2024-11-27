common /com/ k,i
equivalence (i,j)
namelist /nam/j,l,m
!$omp task private(/com/)
j=2
l=1
m=1
write(6,nam)
!$omp end task
end
