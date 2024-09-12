      program main
      real a(10,10),b(10)
      real q,res

      q=1
      do i=1,10
         do j=1,10
            a(j,i)=i/q+j
         enddo
      enddo
      q=0
      do i=1,10
         b(i)=i
         q=b(i)+q
      enddo
      res=q+10
      print *,res,q
      print *,a
      print *,b
      end
