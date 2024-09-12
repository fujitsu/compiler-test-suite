      character*11  s
      character*5   b(10)
      data  s/'0011223300 '/
      data  b/10*'ABCDE'/
       do 10 i=1,9
         s=b(2)
 10    continue
      write(6,*) s
      stop
      end
