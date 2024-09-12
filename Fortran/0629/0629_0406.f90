     program main
      common /xxx/  x1(3)
      integer x1
!$omp threadprivate(/xxx/)

!$omp parallel
      x1=(/11,12,13/)
!$omp end parallel
      if (any(x1/=(/11,12,13/))) then
        print *,'ng'
      else
        print *,'ok'
      endif
     end program main

     block data
      common /xxx/  x1(3)
      integer x1
      data x1 /1,2,3/
!$omp threadprivate(/xxx/)
     end block data
