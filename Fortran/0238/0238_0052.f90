integer,allocatable,save:: ncnt(:)
!$OMP THREADPRIVATE(ncnt)
allocate(ncnt(3))
ncnt=(/1,2,3/)
write (8,*) ( ncnt(i), i=1,3 ) 
print *,'pass'
end

