      parameter(m=6,n=4)
      integer a(m,n),b(m,n)
      interface
        subroutine sub(a,m,n)
        integer a(:,:)
        end subroutine
        subroutine sub0(a,m,n)
        integer a(:,:)
        end subroutine
      end interface
      a=1
      b=1
      call sub(a,m,n)
      call sub0(b,m,n)
      call check(a,b,m,n)
      end

      subroutine sub(a,m,n) 
      integer a(:,:)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,m
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine sub0(a,m,n)
      integer a(:,:)
      do j=1,n
        do i=1,m
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine check(a,b,m,n)
      integer a(m,n),b(m,n)
      do j=1,n
        do i=1,m
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
