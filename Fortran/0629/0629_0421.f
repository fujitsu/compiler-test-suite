      program main
      real a(10),b(10,10)
      real q,res

      do i=1,10
         a(i)=i
      enddo
      q=9
      do i=1,10
         do j=1,10
            b(j,i)=i/q+j
            q=q+b(j,i)
         enddo
      enddo
      res=q+10
      print *,res,q
      print *,a
      print *,b
      end
