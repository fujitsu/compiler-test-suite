      program main
      parameter(n=100)
      integer a(n),b(n,n),c(n),wk
      call init(a,b,c,n)
      do k=1,n
         do j1=1,n
            a(j1)= b(j1,k)
         enddo
         do j2=1,n
            wk = a(1)+a(2)+a(3)+a(4)+a(5)+a(6)+a(7)+a(8)
            do i=1,n
               c(i) = c(i)+wk
            enddo
         enddo
      enddo
      call result_check(c,n)
      end

      subroutine result_check(c,n)
      integer c(n)
      do i=1,n
         if (c(i).ne.396360000) then
            print *,"ng"
            return
         endif
      enddo
      print *,"ok"
      end

      subroutine init(a,b,c,n)
      integer a(n),b(n,n),c(n)
      a = 0.0
      do j=1,n
         do i=1,n
            b(i,j)=i+n*(j-1)
         enddo
      enddo
      c = 0.0
      end
