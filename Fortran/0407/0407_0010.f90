
subroutine testsub1()
   integer prv
   prv=1 
   iaa=1
   i=1
   !$omp parallel shared(prv,iaa,i)
   !$omp task default(firstprivate)
   !$omp critical
    do i=2,10
    do iaa=2,10
    end do
    end do
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (i.ne.1) print *,'err'
   !$omp end parallel
end
call testsub1()
call testsub2()
call testsub3()
call testsub4()
call testsub5()

print *,'pass' 
 end program 



subroutine testsub2()
   integer prv
   ibb=1
   prv=1 
   iaa=1
   i=1
   !$omp parallel shared(prv,iaa,i,ibb)
   !$omp task default(firstprivate)
   !$omp critical
    do i=2,10
    do iaa=2,10
      write(99,*) (i,ibb=1,10)
    end do
    end do
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (ibb.ne.1) print *,'err'
   if (i.ne.1) print *,'err'
   !$omp end parallel
end
subroutine testsub3()
   integer prv
   prv=1 
   ibb=1
   iaa=1
   i=1
   ibb2=1
   iaa2=1
   i2=1
   !$omp parallel shared(prv,iaa,i,ibb,i2,iaa2,ibb2)
   !$omp task default(firstprivate)
   !$omp critical
    do i=2,10
    do iaa=2,10
      write(100,*) (i,ibb=1,10)
    end do
    end do
   !$omp endcritical
   !$omp critical
    do i2=2,10
    do iaa2=2,10
      write(101,*) (i2,ibb2=1,10)
    end do
    end do
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (ibb.ne.1) print *,'err'
   if (i.ne.1) print *,'err'
   if (iaa2.ne.1) print *,'err'
   if (ibb2.ne.1) print *,'err'
   if (i2.ne.1) print *,'err'
   !$omp end parallel
end
subroutine testsub4()
   integer prv
   prv=1 
   ibb=1
   iaa=1
   i=1
   ibb2=1
   iaa2=1
   i2=1
   !$omp parallel shared(prv,iaa,i,ibb,i2,iaa2,ibb2)
   !$omp task default(firstprivate)
   !$omp critical
    do iaa=2,10
      write(102,*) (i,ibb=1,10)
    end do
   !$omp endcritical
   !$omp critical
    do i2=2,10
      write(103,*) (i2,ibb2=1,10)
    end do
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (ibb.ne.1) print *,'err'
   if (i.ne.1) print *,'err'
   if (iaa2.ne.1) print *,'err'
   if (ibb2.ne.1) print *,'err'
   if (i2.ne.1) print *,'err'
   !$omp end parallel
end
subroutine testsub5()
   integer prv
   prv=1 
   ibb=1
   iaa=1
   i=1
   ibb2=1
   iaa2=1
   i2=1
   !$omp parallel shared(prv,iaa,i,ibb,i2,iaa2,ibb2)
   !$omp task default(firstprivate)
   !$omp critical
      write(104,*) (i,ibb=1,10)
    do iaa=2,10
    end do
   !$omp endcritical
   !$omp critical
    do i2=2,10
    end do
      write(105,*) (i2,ibb2=1,10)
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (ibb.ne.1) print *,'err'
   if (i.ne.1) print *,'err'
   if (iaa2.ne.1) print *,'err'
   if (ibb2.ne.1) print *,'err'
   if (i2.ne.1) print *,'err'
   !$omp end parallel
end
