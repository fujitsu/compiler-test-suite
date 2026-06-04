program main
   integer::a=5,i
   !$omp single
   !$omp parallel firstprivate(a)
     !$omp do
       do i=1,10
         !$omp task
             a=a+i
         !$omp end task
         !$omp taskwait
         if (a.ne.5) print *, "err"
       end do
   !$omp end parallel
   !$omp end single

   !$omp single
   !$omp parallel private(a)
      a=10
     !$omp do
       do i=1,10
         !$omp task
             a=a+i
         !$omp end task
         !$omp taskwait
         if (a.ne.10) print *, "err1"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel shared(a)
     !$omp do
       do i=1,1
         !$omp task
             a=a+i
         !$omp end task
         !$omp taskwait
         if (a.ne.6) print *, "err2"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel shared(a)
     !$omp do
       do i=1,1
         !$omp task firstprivate(a)
             a=a+i
         !$omp end task
         !$omp taskwait
         if (a.ne.5) print *, "err3"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel shared(a)
     !$omp do
       do i=1,1
         !$omp task private(a)
             a=1111
             a=a+i
         !$omp end task
         !$omp taskwait
         if (a.ne.5) print *, "err4"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel shared(a)
     !$omp do 
       do i=1,1
         !$omp task 
             a=1111
         !$omp end task
         !$omp taskwait
         if (a.ne.1111) print *, "err5"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel shared(a)
     !$omp do
       do i=1,1
         !$omp task shared(a)
             a=1111
         !$omp end task
         !$omp taskwait
         if (a.ne.1111) print *, "err6"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel reduction(+:a)
     a=99
     !$omp do
       do i=1,1
         !$omp task
             a=1111
         !$omp end task
         !$omp taskwait
         if (a.ne.99) print *, "err7"
       end do
   !$omp end parallel
   !$omp end single

a=5
   !$omp single
   !$omp parallel reduction(+:a)
     !$omp do
       do i=1,1
         !$omp task shared(a)
             a=1111
         !$omp end task
         !$omp taskwait
         if (a.ne.1111) print *, "err8"
       end do
   !$omp end parallel
   !$omp end single

print *,"pass"
 end program main
