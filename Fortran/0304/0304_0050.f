      dimension a(10,10),b(10,10)
      data b/100*0/,a/100*0/
      i=1
      m=1
      goto 1000
 1        i=i+1
      m=m+1
      do 100 j=1,m
         a(i,j)=b(i,j)
 100  continue
 1000  goto (1,2),i
 2     write(6,99)a,b
 99    format(5f6.3,5f6.3)
       stop
       end
