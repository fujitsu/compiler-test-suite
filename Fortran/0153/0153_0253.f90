      subroutine init(a,b,res,n1)
      integer(4)  a(n1),b(n1),res(n1)
      integer(8)  i,n
      parameter (n=65)
      do i=1,n
         b(i) = i
         res(i) = ishft(b(i),-3)
      enddo
      end

      print *,'pass'
      end
