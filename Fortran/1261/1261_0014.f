      parameter(n=5)
      integer a(n,1,n),b(n,1,n)
      a=1
      b=1
      call sub(a,n)
      call sub(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,1,n)
!$omp parallel do collapse(2)
       do k=1,n
        do i=1,n
         a(i,1,k)=a(i,1,k)+1
        enddo
       enddo
      end

      subroutine sub0(a,n)
      integer a(n,1,n)
      do k=1,n
       do i=1,n
        a(i,1,k)=a(i,1,k)+1
       enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,1,n),b(n,1,n)
      do k=1,n
       do i=1,n
        if (a(i,1,k) .ne. b(i,1,k)) then
         print*,"NG"
         call exit
        endif
       enddo
      enddo
      print*,"OK"
      end
