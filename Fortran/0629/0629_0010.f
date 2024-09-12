      character*11  s,b(10)
      data  s/'0011223300 '/
      data  b/10*'ABCD-111   '/
       do 10 i=1,9
         s=b(i)
 10    continue
      write(6,*) s
      stop
      end
