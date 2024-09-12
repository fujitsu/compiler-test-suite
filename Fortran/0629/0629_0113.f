      program main
      integer a(10),b(10),c(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      do i=a(1),10
         a(i)=11-i
      enddo
      print *,a

      call sub(n)
      do i=1,n-1
         b(i)=21-i
      enddo
      print *,b

      call sub(n)
      do i=1,n
         c(i)=31-i
      enddo
      print *,c

      end

      subroutine sub(n)
      integer n
      n = 10
      return
      end
