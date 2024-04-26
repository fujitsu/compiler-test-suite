       dimension  a(10),b(10),c(10)
       data  a/10*2.1/,b/10*3.2/,c/10*4.2/,n/3/,m/2/
       do 10 i=1,6
         a(i+n) = b(i+1) * c(i)
         b(i) = c(i) - a(i+m)
 10    continue
       write(6,*) a
       write(6,*) b

       do 20 i=1,6
         a(i+n) = b(i+1) * c(i)
         b(i) = c(i) - a(i+2)
 20    continue
       write(6,*) a
       write(6,*) b
       stop
       end
