      logical s/.false./
      character*1  b(10),c(10)
      data  b/10*'5'/
      data  c/10*'5 '/
       do 10 i=1,9
         s = b(i)==c(i)
 10    continue
      write(6,*) s
      stop
      end
