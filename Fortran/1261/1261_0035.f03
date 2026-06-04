      parameter(n=10)
      dimension a(n,n),b(n,n)
      a=1.0
      b=1.0 
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      dimension a(n,n)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)=sin(real(i*j))
        enddo
      enddo
      end

      subroutine sub0(a,n)
      dimension a(n,n)
      do j=1,n
        do i=1,n
          a(i,j)=sin(real(i*j))
        enddo
      enddo
      end

      subroutine check(a,b,n)
      real*8,parameter::err=1.d-7
      dimension a(n,n),b(n,n)
      do j=1,n
        do i=1,n
          if (abs(a(i,j)-b(i,j)).gt.err) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
