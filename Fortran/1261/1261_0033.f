      parameter(m=5)
      common/xx/n
      integer a(m,m),b(m,m)
      n=m
      a=1
      b=1
      call sub(a)
      call sub0(b)
      call check(a,b)
      end

      subroutine sub(a)
      common/xx/n
      integer a(n,n)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine sub0(a)
      common/xx/n
      integer a(n,n)
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine check(a,b)
      common/xx/n
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
