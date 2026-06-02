      integer(8),parameter::n=2
      real(8)::a(n,n,n,n,n,n,n)
      call sub1(a,n)
      call sub2(a,n)
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(8)::n
      real(8)::a(n,n,n,n,n,n,n)
      a=1.0d0
      do i1=1,n
      do i2=1,n
      do i3=1,n
      do i4=1,n
      do i5=1,n
      do i6=1,n
!$omp parallel do reduction(+:a)
      do i7=1,n
        a(i7,i6,i5,i4,i3,i2,i1)=a(i7,i6,i5,i4,i3,i2,i1)+1.0d0
      enddo
!$omp end parallel do
      enddo
      enddo
      enddo
      enddo
      enddo
      enddo
      end

      subroutine sub2(a,n)
      integer(8)::n
      real(8)::a(n,n,n,n,n,n,n)
      if (any(a/=reshape((/(2,i=1,n**7)/),(/2,2,2,2,2,2,2/)))) print *,"fail"
      end
