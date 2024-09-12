      program main
      real a(10),b(10),z(10)
      real q,res

      do i=1,10
         z(i)=i
      enddo
      q=1
      do i=1,10
         a(i)=z(i)/q
      enddo
      q=0
      do i=1,10
         b(i)=i
         q=b(i)+q
      enddo
      res=q+10
      print *,res,q,a(9)
      end
