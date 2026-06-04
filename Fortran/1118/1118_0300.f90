call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
common /com/ k,i
equivalence (i,j)
namelist /nam/i,j,k 
k=3
i=4
!$omp task 
i=1
j=2
k=1
write(1,nam)  
!$omp end task
end
subroutine bbbbb
common /com/ k,i
equivalence (i,j)
namelist /nam/i,j,k 
k=3
i=4
!$omp task 
i=1
j=2
k=1
write(2,nam)  
!$omp end task
end
