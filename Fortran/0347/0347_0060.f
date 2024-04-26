      dimension a(20),b(20),c(20),d(20)
      data  a/20*1.0/,b/20*2.0/,c/20*3.0/,d/20*2.3/
      do 10 i=5,10
         a(3)   = b(2)  + c(10)
         d(i+1) = a(20) * c(16)
         b(11)  = a(3)  - c(10)
         c(10)  = a(20) * c(16)
         b(1)   = a(1)  + d(20)
 10   continue
      write (6,600) a
      write (6,600) b
      write (6,600) c
      write (6,600) d
      do 20 j=15,5,-1
         a(10) = b(20) * c(3)
         s     = d(5)  + c(13)
         c(3)  = a(10) + d(11)
         b(5)  = d(3)  - a(20)
 20   continue
      write (6,600) a
      write (6,600) b
      write (6,600) c
      write (6,600) d
 600  format(2x,2(10f7.3/))
      stop
      end
