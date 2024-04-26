      subroutine sub(n,a,b)
      integer s/0/,a(n),b(n),c
      do i=1,n
         if (b(i).eq.1) then
            c=i
         endif
         s=s+a(i)
      enddo
      print *,s,c
      end

      program main
      parameter(n=10)
      integer a(n),b(n)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,1,0,0,0,0,1,0,0,0/
      call sub(n,a,b)
      end
