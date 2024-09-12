      program main
      real a(10,10),b(10,10),c(10,10),d(10,10)
      data a/100*0./,b/100*1./,c/100*2./,d/100*3./
      call sub(a,b,c,d,10,5)
      stop
      end
      subroutine sub(a,b,c,d,n,m)
      real a(n,n),b(n,n),c(n,n),d(n,n)
      real p(10),q(10),r(10)
      data p/10*1./,q/10*2./,r/10*3./

      do 10 j=1,6
       do 10 i=1,9
         a(i,j) = 0.
         b(i,j) = i
   10 continue
      write(6,*) a,b

      do 20 i=1,n
   20 continue
      write(6,*) i

      do 30 j=1,m
      do 30 i=1,m
        s1 = i
        s2 = 0.
        s3 = s1
        a(i,j) = s1
        b(i,j) = p(i) + q(i)
        c(i,j) = p(i) + q(i)
        k = i + 2
        d(k,j) = a(i,j)
   30 continue
      write(6,*) i,s2
      return
      end
