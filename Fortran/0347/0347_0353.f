      dimension a(10),b(10),c(10),s(3)
      data a/1.,2.,5*7.,4.,6.,9./,b/10*2.0/,c/10*3.0/,s/3*0.0/
      do 10 j=1,3
       a(j)=a(j)*a(j+7)+j
       do 10 i=1,10
        s(j) = s(j) + a(i)+b(i)+c(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) s
      stop
      end
