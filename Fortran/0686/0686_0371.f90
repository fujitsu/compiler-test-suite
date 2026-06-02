      integer(4),parameter::n=2
      integer(4)::a(n,n)
      a=0
      call sub1(a,n)
      if (any(pack(a,mask=.true.)/=10)) print *,"fail"
      a=0
      call sub2(a,n)
      if (any(pack(a,mask=.true.)/=10)) print *,"fail"
      a=0
      call sub3(a,n)
      if (any(pack(a,mask=.true.)/=10)) print *,"fail"
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(4)::a(n,n)
      integer(4),intent(in)::n
!$omp parallel
!$omp do  reduction(+:a)
      do i0=1,10
      do i1=1,n
      do i7=1,n
        a(i7,i1)=a(i7,i1)+1
      enddo
      enddo
      enddo
!$omp end do
!$omp end parallel
      end

      subroutine sub2(a,n)
      integer(4)::a(n,n)
      integer(4),intent(in)::n
      a=0
!$omp parallel reduction(+:a)
!$omp do
      do i0=1,10
      do i1=1,n
      do i7=1,n
        a(i7,i1)=a(i7,i1)+1
      enddo
      enddo
      enddo
!$omp end do
!$omp end parallel
      end

      subroutine sub3(a,n)
      integer(4)::a(n,n)
      integer(4),intent(in)::n
      a=0
!$omp parallel do  reduction(+:a)
      do i0=1,10
      do i1=1,n
      do i7=1,n
        a(i7,i1)=a(i7,i1)+1
      enddo
      enddo
      enddo
!$omp end parallel do
      end
