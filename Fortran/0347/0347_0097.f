       program main
       common  a(10),b(10),c(10),k
       k = 1
       do 10 j=1,2
         n = j+k
         call  sub
         do 10 i=2,7
 10        a(i) = a(i+n) + c(i) + b(i)
       write(6,*) a
       stop
       end
       block data bk1
       common  a(10),b(10),c(10),k
       data  a,b,c/30*1./,k/1/
       end
       subroutine sub
       common  a(10),b(10),c(10),k
       k = k + 1
       do 10 i=1,2
         a(i) = b(k) + c(k)
  10     k = k+ 1
       k= k-3
       return
       end
