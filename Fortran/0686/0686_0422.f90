      module mod
        integer(4),dimension(20)::a
        integer(4)::minv1,minv2,minl1,minl2
        integer(4)::maxv1,maxv2,maxl1,maxl2
      end module

      use mod
      a=(/3,5,7,9,11,13,15,17,19,1,2,20,18,16,14,12,10,8,6,4/)
      maxv1=0
      maxv2=0
      minv1=huge(minv1)
      minv2=huge(minv2)
      call sub1()
      call sub2()
      if (maxv1.ne.maxv2) print *,"fail"
      if (minv1.ne.minv2) print *,"fail"
      if (maxl1.ne.maxl2) print *,"fail"
      if (minl1.ne.minl2) print *,"fail"
      print *,'pass'
      end

      subroutine sub1()
      use mod
!$omp parallel 
!$omp do reduction(max:maxv1),reduction(min:minv1)
      do i=1,20
        maxv1 = max(maxv1,a(i))
        minv1 = min(minv1,a(i))
      enddo
!$omp end do
!$omp do
      do i=1,20
!$omp critical
        if (a(i).eq.maxv1) maxl1=i
        if (a(i).eq.minv1) minl1=i
!$omp end critical
      enddo
!$omp end do
!$omp end parallel
      end

      subroutine sub2()
      use mod
!$omp parallel
!$omp workshare
      maxv2 = maxval(a) 
      minv2 = minval(a) 
      maxl2 = maxloc(a,1)
      minl2 = minloc(a,1)
!$omp end workshare
!$omp end parallel
      end
