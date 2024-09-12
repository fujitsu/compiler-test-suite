subroutine sub(cha)
   namelist /na/ i,j
   character ::cha*200
i=4
j=5
   write (cha,nml =na)
end 
 program main
   character ::cha*200
   namelist /na/ i,j
   integer prv
i=1
j=2
   prv=1 
   call sub(cha)
   !$omp parallel shared(prv,i,j,cha)
   !$omp task firstprivate(cha) default(firstprivate)
   read  (cha,nml =na)
   !$omp critical
   prv = prv + 1
   read  (cha,nml =na)
   !$omp endcritical
   !$omp end task
 if (i.ne.1) print *,'err1'
 if (j.ne.2) print *,'err2'
 if (prv.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
