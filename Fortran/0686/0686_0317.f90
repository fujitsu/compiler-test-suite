      common /com/ a,b,p
      integer(4)::a,b
      integer(4),pointer::p

      a=-1
      b=-1
      allocate(p)
      p=-1

!$omp parallel private(/com/)
      a=1
      b=1
      allocate(p)
      p=1
      if (a/=1.or.b/=1.or.p/=1) print *,"fail"
      deallocate(p)
!$omp end parallel

      if (a/=-1.or.b/=-1.or.p/=-1) print *,"fail"
      deallocate(p)

      print *,'pass'
      end
