  program main

   common/com/a1
   integer :: a1,i
!$omp threadprivate (/com/)

!$omp parallel
   i = 111
!$omp end parallel

   if (i /= 111) print *," +++ NG! 1 +++ "

!$omp parallel private(i)
   i = 222
!$omp end parallel

   if (i /= 111) print *," +++ NG! 2 +++ "

!$omp parallel shared(i)
   i = 333
!$omp end parallel

   if (i /= 333) print *," +++ NG! 3 +++ "

!$omp parallel default(shared)
   i = 444
!$omp end parallel

   if (i /= 444) print *," +++ NG! 4 +++ "

!$omp parallel default(private)
   i = 555
!$omp end parallel

   if (i /= 444) print *," +++ NG! 5 +++ "

!$omp parallel default(none),private(i)
   i = 666
!$omp end parallel

   if (i /= 444) print *," +++ NG! 6 +++ "

!$omp parallel firstprivate(i)
!$omp master
   if (i /= 444) print *," +++ NG! 7 +++ "
!$omp end master
!$omp end parallel

!$omp parallel reduction(+:i)
!$omp master
   i = i+111
!$omp end master
!$omp end parallel

   if (i /= 555) print *," +++ NG! 8 +++ "

!$omp parallel if(.false.)
   i = 666
!$omp end parallel

   if (i /= 666) print *," +++ NG! 9 +++ "

!$omp parallel if(.true.)
   i = 777
!$omp end parallel

   if (i /= 777) print *," +++ NG! A +++ "

!$omp parallel copyin(/com/)
   if (a1 /= i)  print *," +++ NG! B +++ "
!$omp end parallel

    print *, " *** pass *** "

  end program main

  blockdata 
   common/com/a1
   integer :: a1=777
!$omp threadprivate (/com/)
  end blockdata
