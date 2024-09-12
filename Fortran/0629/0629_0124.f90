      character*11  a(3),b(3)
      data  a/3*'0011223300 '/
      data  b/3*'AABB-111   '/
       do 10 i=1.,99.
         a=b
 10    continue
      write(6,*) a
      stop
      end
