      parameter(n=5)
      integer a(n,n,n,n),b(n,n,n,n)
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,n,n,n)
      do l=1,n
!$omp parallel do collapse(2)
       do k=1,n
        do j=1,n
         do i=1,n
          a(i,j,k,l)=a(i,j,k,l)+1
         enddo
        enddo 
       enddo
      enddo
      end

      subroutine sub0(a,n)
      integer a(n,n,n,n)
      do l=1,n
       do k=1,n
        do j=1,n 
         do i=1,n
          a(i,j,k,l)=a(i,j,k,l)+1
         enddo
        enddo
       enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,n,n,n),b(n,n,n,n)
      do l=1,n
       do k=1,n
        do j=1,n
         do i=1,n
          if (a(i,j,k,l) .ne. b(i,j,k,l)) then
            print*,"NG"
            call exit
          endif
         enddo
        enddo
       enddo
      enddo
      print*,"OK"
      end
