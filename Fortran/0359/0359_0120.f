
       n=10
       call sub(n)
       stop
       end
       subroutine sub(n)
       real a(n,n),b(n,n),c(n,n)
        b = 1.0
        c = 2.0
       do 10 i=1,n
       do 10 j=1,n
        b(i,j)=b(i,j)+c(i,j)
        a(i,j)=b(i,j)+c(i,j)
 10    continue
       write (6,*) a
       stop
       end
