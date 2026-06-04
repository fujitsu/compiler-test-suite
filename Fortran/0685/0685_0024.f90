     call sub()
     print *,'pass'
     end

      subroutine sub()
      integer a(10)
      i=100
!$omp parallel default(private)
      a=(/(i,i=1,10)/)
      a(1:10) = a(1:10) - 5
!$omp do
      do i=1,10
        if (a(i)) 10,20,30
   10   continue
        if (i>=5) print *,"fail"
        goto 100
   20   continue
        if (i/=5) print *,"fail"
        goto 100
   30   continue
        if (i<=5) print *,"fail"
        goto 100
  100   continue
      enddo
!$omp enddo
!$omp endparallel
!$    if (i/=100) print *,"fail"
      end subroutine
