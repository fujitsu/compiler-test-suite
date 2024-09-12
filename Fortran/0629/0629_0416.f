      program main
      real a(10),b(10)
      real q,res
      integer n

      call sub(n)
      q=1
      do i=1,n
         a(i)=i/q
      enddo
      q=0
      do i=1,n
         b(i)=i
         q=b(i)+q
      enddo
      res=q+10
      print *,q,res,a(9)
      end

      subroutine sub(n)
      integer n
      n=10
      end
