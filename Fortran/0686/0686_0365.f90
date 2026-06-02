      module mod
        integer(2),parameter::n=2
        real(16)::a(n,n,n,n,n,n,n)=1.0q0
      end module
      call sub1()
      call sub2()
      print *,'pass'
      end

      subroutine sub1()
      use mod
!$omp parallel do reduction(+:a)
      do i1=1,n
      do i2=1,n
      do i3=1,n
      do i4=1,n
      do i5=1,n
      do i6=1,n
      do i7=1,n
        a(i7,i6,i5,i4,i3,i2,i1)=a(i7,i6,i5,i4,i3,i2,i1)+1.0q0
      enddo
      enddo
      enddo
      enddo
      enddo
      enddo
      enddo
!$omp end parallel do
      end

      subroutine sub2()
      use mod
      if (any(a/=reshape((/(2.0q0,i=1,n**7)/),(/n,n,n,n,n,n,n/)))) print *,"fail"
      end
