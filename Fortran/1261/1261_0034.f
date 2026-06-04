      parameter(n=5)
      integer a(n,n),b(n,n)
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n)
      integer a(n,n)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine sub0(a,n)
      integer a(n,n)
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,n),b(n,n)
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
