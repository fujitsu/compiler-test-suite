      character*9 a(10)
      data  a/10*'12345678910111213'/
       do 10 i=1,10
         a(i)='FORT'//'RAN'
 10    continue
      write(6,*) a
      stop
      end
