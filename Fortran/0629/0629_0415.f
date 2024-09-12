      program main
      real a(10),b(10)
      real q,res

      q=1
      do i=1,10
         a(i)=i/q
      enddo
      q=0
      do i=1,10
         b(i)=i
         q=b(i)+q
      enddo
      res=q+10
      print *,res,q,a(9)
      print *,i
      end
