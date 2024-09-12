       parameter (n=1000000)
       real*8 a(n),b(n)
       data a/1000000*1./,b/1000000*2./
       do j=1,1000
         do i=1,n
           a(i)=b(i)
        enddo
       enddo
      write(6,*) a(1)
      end
