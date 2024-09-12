      character*11  s,s2
      data  s/'0011223300 '/
      data  s2/'ABCD-111   '/
       do 10 i=1,9
         s=s2
 10    continue
      write(6,*) s
      stop
      end
