      integer(2),parameter::n=2
      integer(4)::a(n,n,n,n,n,n,n)
!$omp parallel
      call sub1(a,n)
!$omp end parallel
      call sub2(a,n)
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(2),intent(in)::n
      integer(4)::a(n,n,n,n,n,n,n)
      a=1
      do i1=1,n
      do i2=1,n
      do i3=1,n
!$omp do reduction(+:a)
      do i4=1,n
      do i5=1,n
      do i6=1,n
      do i7=1,n
        a(i7,i6,i5,i4,i3,i2,i1)=a(i7,i6,i5,i4,i3,i2,i1)+1
      enddo
      enddo
      enddo
      enddo
!$omp end do
      enddo
      enddo
      enddo
      end

      subroutine sub2(a,n)
      integer(2),intent(in)::n
      integer(4)::a(n,n,n,n,n,n,n)
      if (any(a/=reshape((/(2,i=1,n**7)/),(/2,2,2,2,2,2,2/)))) print *,"fail"
      end
