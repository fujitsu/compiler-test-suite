      integer(4)::a(2,2,2,2,2,2,2)
      call sub1(a)
      call sub2(a)
      print *,'pass'
      end

      subroutine sub1(a)
      integer(4)::a(2,2,2,2,2,2,2)
      a=1
      do i1=1,2
      do i2=1,2
      do i3=1,2
!$omp parallel do reduction(+:a)
      do i4=1,2
      do i5=1,2
      do i6=1,2
      do i7=1,2
        a(i7,i6,i5,i4,i3,i2,i1)=a(i7,i6,i5,i4,i3,i2,i1)+1
      enddo
      enddo
      enddo
      enddo
!$omp end parallel do
      enddo
      enddo
      enddo
      end

      subroutine sub2(a)
      integer(4)::a(2,2,2,2,2,2,2)
      if (any(a/=reshape((/(2,i=1,2**7)/),(/2,2,2,2,2,2,2/)))) print *,"fail"
      end
