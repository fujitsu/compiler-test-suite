      integer(2),parameter::n=2
      integer(4)::a(n,n,n,n,n,n)=1
      call sub1(a,n)
      call sub2(a,n)
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(2),intent(in)::n
      integer(4)::a(n,n,n,n,n,n)
      a=1
      do i1=1,n
      do i2=1,n
      do i3=1,n
!$omp parallel reduction(+:a)
!$omp do
      do i4=1,n
      do i5=1,n
      do i6=1,n
      do i7=1,n
        a(i6,i5,i4,i3,i2,i1)=a(i6,i5,i4,i3,i2,i1)+1
      enddo
      enddo
      enddo
      enddo
!$omp end do
!$omp end parallel
      enddo
      enddo
      enddo
      end

      subroutine sub2(a,n)
      integer(2),intent(in)::n
      integer(4)::a(n,n,n,n,n,n)
      logical(4)::l
!$omp parallel workshare
      l = (any(a/=reshape((/(3,i=1,n**6)/),(/2,2,2,2,2,2/))))
!$omp end parallel workshare
      if (l) then
        print *,a
        print *,"fail"
      endif
      end
