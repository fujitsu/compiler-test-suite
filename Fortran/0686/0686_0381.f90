      integer(4)::a(4)=4,b(3)=3,c(2)=2
      call sub(a,b,c)
      call sub2()
      print *,'pass'
      contains
        subroutine sub2()
        logical(8)::la,lb,lc
!$omp parallel workshare
        la = any(a/=(/ 4, 4, 4, 4/))
        lb = any(b/=(/ 3, 3, 3/))
        lc = any(c/=(/ 2, 2/))
!$omp end parallel workshare
        if (la.or.lb.or.lc) print *,"fail"
        end subroutine
      end

      subroutine sub(a,b,c)
      integer(4)::a(4),b(3),c(2)
      integer(4),external::OMP_GET_NUM_THREADS
!$omp parallel private(a,b,c)
!$omp single
      num = OMP_GET_NUM_THREADS()
!$Omp end single
      a=14
      b=13
      c=12
!$omp do private(a,c)
      do ii=1,num
      a=24
      b=23
      c=22
!$omp parallel private(a,b,c)
      a=34
      b=33
      c=32
!$omp do private(a,c)
      do jj=num,1,-1
      a=44
      b=43
      c=42
      enddo
!$omp end do
      if (any(a/=(/34,34,34,34/))) print *,"fail"
      if (any(b/=(/43,43,43/))) print *,"fail"
      if (any(c/=(/32,32/))) print *,"fail"
!$omp end parallel
      if (any(a/=(/24,24,24,24/))) print *,"fail"
      if (any(b/=(/23,23,23/))) print *,"fail"
      if (any(c/=(/22,22/))) print *,"fail"
      end do
!$omp end do
      if (any(a/=(/14,14,14,14/))) print *,"fail"
      if (any(b/=(/23,23,23/))) print *,"fail"
      if (any(c/=(/12,12/))) print *,"fail"
!$omp end parallel
      end
