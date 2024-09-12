      logical a(10)/10*.false./
      character*1  b,c(10)
      data  b/'5'/
      data  c/10*'5 '/
       do 10 i=1,9
         a(i) = b==c(i)
 10    continue
      write(6,*) a
      stop
      end
