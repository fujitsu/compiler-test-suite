      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20  a(j)=j

      y=0.0
      do 10 i=1,10
        x=b(i)
        if(a(i)-5) 1,2,3
   1      y=x+1.
          go to 5
   2      y=x+2.
          go to 4
   3      y=x+3.
   5      b(i)=a(i)+y
  10  continue
 4    write(6,*) b
      write(6,*) y
      stop
      end
