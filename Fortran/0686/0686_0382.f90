      module mod
        interface wk
          module procedure size8,size4,size2
        end interface
        integer(4),parameter::na=4,nb=3,nc=2
        integer(4)::a(na)=4,b(nb)=3,c(nc)=2
        logical(8)::la
        logical(4)::lb
        logical(2)::lc
        contains

          subroutine size8(array,ll)
          integer(4),dimension(4)::array
          logical(8)::ll
!$omp parallel workshare
          ll = any(array/=(/ 4, 4, 4, 4/))
!$omp end parallel workshare
          end subroutine

          subroutine size4(array,ll)
          integer(4),dimension(3)::array
          logical(4)::ll
!$omp parallel workshare
          ll = any(array/=(/ 3, 3, 3/))
!$omp end parallel workshare
          end subroutine

          subroutine size2(array,ll)
          integer(4),dimension(2)::array
          logical(2)::ll
!$omp parallel workshare
          ll = any(array/=(/ 2, 2/))
!$omp end parallel workshare
          end subroutine
      end

      subroutine sub2(a,b,c,na,nb,nc)
      integer(4)::a(na),b(nb),c(nc)
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

      call sub1()
      print *,'pass'
      end

      subroutine sub1()
      use mod
      call sub2(a,b,c,na,nb,nc)
      call wk(a,la)
      call wk(b,lb)
      call wk(c,lc)
      if (la.or.lb.or.lc) print *,"fail"
      end subroutine
