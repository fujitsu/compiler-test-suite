      dimension a(10),b(10),c(10),l(10)
      data   a,b,c/30*1./,n/2/
      do 10 i=1,10
 10     l(i) = i
      do 20 i=1,10
 20     a(l(i)) = a(l(i)) + b(i)
      k = 0
      do 30 j=1,10,n
        k = k+1
 30     a(j) = a(k) + c(j)
      k= 1

      do 40 i=1,8
       b(k+n) = a(i) +c(i)
       k= k+1
       a(i) = b(k) + c(i)
 40   continue
      do 50 i=1,8
       b(i+n) = a(i) +c(i)
       a(i) = b(k) + c(i)
       n=c(i)
 50   continue
      write(6,*) a
      write(6,*) b
      stop
      end
