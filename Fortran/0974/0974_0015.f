      character*10 s
      character*5  b(10),c(10)
      data  b/10*'ABCD-'/
      data  c/10*'EFG- '/
       do 10 i=1,10
         s=b(i)//c(i)
 10    continue
      write(6,*) s
      stop
      end
