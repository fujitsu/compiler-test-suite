
       n=20
       call sub2(n)
       stop
       end
       subroutine sub2(n)
       complex a(n),b(n),c(n)
       complex*16  d(n),e(n),f(n)
       do 10 i=1,n
         a(i)=(1.0,1.0)
         b(i)=(1.0,1.0)
         d(i)=(1.0,1.0)
         e(i)=(1.0,1.0)
         c(i)=a(i)*b(i)/a(i)
         f(i)=d(i)*e(i)/d(i)
 10    continue
       print *,c,f
       return
       end
