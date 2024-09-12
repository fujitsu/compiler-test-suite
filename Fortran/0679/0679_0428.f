      program main
      dimension a(10),b(10),c(10),l(10)
      data a/10*1.0/,l/10*1/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      do 10 i=2,10
        l(i) = l(i-1) + 1
        a(l(i)) = b(l(i)) + sqrt(c(l(i)))
  10  continue
      write(6,*) l
      write(6,*) a
      stop
      end
