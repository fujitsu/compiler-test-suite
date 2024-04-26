      program main
      dimension a(10),b(11),xx(11)
      data b/11*0.0/

      do 20 j=1,10
      xx(j)=j
  20  a(j)=j

      do 10 i=1,10
        x=b(i)
        if(a(i)-5) 1,2,3
   1      x=1.
          go to 5
   2      x=2.
          go to 4
   3      x=3
   5      b(i+1)=a(i)
  10  continue
 4    write(6,*) b

      do 110 i=1,10
        ss=b(i)
        if(a(i)-5) 11,12,13
  11      xx(i)=1.+ss
          go to 15
  12      xx(i)=2.
          go to 14
  13      xx(i)=3.
  15      b(i)=a(i)+xx(i)
 110  continue
 14   write(6,*) b
      stop
      end
