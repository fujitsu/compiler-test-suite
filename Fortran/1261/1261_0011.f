      parameter(n=10)
      character*5 a(n,n),b(n,n)
      a="321"
      b="321"
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n)
      character*5 a(n,n),b(n,n)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)="54"//a(i,j)
        enddo
      enddo
      end

      subroutine sub0(a,n)
      character*5 a(n,n)
      do j=1,n
        do i=1,n
          a(i,j)="54"//a(i,j)
        enddo
      enddo
      end

      subroutine check(a,b,n)
      character*5 a(n,n),b(n,n)
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
