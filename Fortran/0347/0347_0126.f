       dimension  a(20),b(20),c(20)
       data  a/20*2.0/,b/20*3.0/,c/20*1.0/,n/3/

       do 10 i=2,10
         a(i+n+1) = b(i+n) * c(i+n+1)
         b(i) = a(i+1) / 2.0
         c(i+n-1) = b(i-n+2) + a(i+2)
  10   continue
       write(6,*) (a(i),i=3,13)
       write(6,*) (b(i),i=5,15)
       write(6,*) (c(i),i=4,14)
       stop
       end
