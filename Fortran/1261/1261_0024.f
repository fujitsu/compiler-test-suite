      parameter(m=6,n=4)
      dimension a(m+n+1,m-n+2),b(m+n+1,m-n+2)
      a=1.0
      b=1.0
      call sub(a,m,n)
      call sub0(b,m,n)
      call check(a,b,m,n)
      end

      subroutine sub(a,m,n) 
      dimension a(m+n+1,m-n+2)
!$omp parallel do collapse(2) 
      do j=1,2+m-n
        do i=1,1+m+n
          a(i,j)=a(i,j)+1.0
        enddo
      enddo
      end

      subroutine sub0(a,m,n)
      dimension a(m+n+1,m-n+2)
      do j=1,2+m-n
        do i=1,1+m+n
          a(i,j)=a(i,j)+1.0
        enddo
      enddo
      end

      subroutine check(a,b,m,n)
      dimension a(m+n+1,m-n+2),b(m+n+1,m-n+2)
      do j=1,2+m-n
        do i=1,1+m+n
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
