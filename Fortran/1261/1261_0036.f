      parameter(n=10)
      dimension a(n,n),b(n,n)
      a=1.0
      b=1.0 
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      integer function test(i)
      test=i
      end

      subroutine sub(a,n) 
      dimension a(n,n)
      integer test
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)=test(i)
        enddo
      enddo
      end

      subroutine sub0(a,n)
      dimension a(n,n)
      integer test
      do j=1,n
        do i=1,n
          a(i,j)=test(i)
        enddo
      enddo
      end

      subroutine check(a,b,n)
      dimension a(n,n),b(n,n)
      do j=1,n
        do i=1,n
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
