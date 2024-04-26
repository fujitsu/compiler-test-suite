       complex a(10),b(10),c(10)
       call sub2(a,b,c,10)
       end

       subroutine sub2(a,b,c,n)
       complex a(n),b(n),c(n)
       do 10 i=1,n
         a(i)=2
         c(i)=a(i)-2-a(i)
 10    continue
       print *,c
       return
       end
