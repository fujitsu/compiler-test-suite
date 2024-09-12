      program main
      dimension a(10),b(10),c(10)
      data a/10*1/,b/10*2/,c/10*2/
      do 10 i=1,10
       a(i) = sqrt(b(i)) + c(i)
       s = a(i)
       write(6,*) s
  10  continue
      write(6,*) a,' i = ',i
      stop
      end
