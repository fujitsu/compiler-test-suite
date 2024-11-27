      character*10 a(10)
      character*5  b(10)
      data  b/10*'EFGH-'/
       do 10 i=1,10
         a(i)=b(i)//'ABCD-'
 10    continue
      write(6,*) a
      stop
      end
