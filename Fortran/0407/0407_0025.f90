subroutine sub(cha)
   namelist /na/ i,j
   character ::cha*200
i=4
j=5
   write (cha,nml =na)
end 
subroutine sub2(cha)
   namelist /na2/ i2,j2
   character ::cha*200
i2=4
j2=5
   write (cha,nml =na2)
end
 program main
   character ::cha*200,cha2*200
   namelist /na/ i,j
   namelist /na2/ i2,j2
   integer prv,prv2
i=1
j=2
i2=1
j2=2
   prv=1 
   prv2=1 
   call sub(cha)
   call sub2(cha2)
   !$omp parallel shared(prv,i,j,cha,i2,j2,cha2,prv2) 
   !$omp task default(firstprivate)
   !$omp critical
   prv = prv + 1
   read  (cha,nml =na)
   !$omp endcritical
   !$omp critical 
   prv2 = prv2 + 1
   read  (cha2,nml =na2)
   !$omp endcritical
   !$omp end task
 if (i.ne.1) print *,'err1a'
 if (j.ne.2) print *,'err2a'
 if (i2.ne.1) print *,'err1'
 if (j2.ne.2) print *,'err2'
 if (prv.ne.1) print *,'erra'
 if (prv2.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
