      program main
      dimension a(10),b(11)
      data b/11*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        ss=b(i)
        if(a(i).gt.5.) go to 1
          x=1.+ss
          go to 3
   1      x=2.+ss
          b(i+1)=a(i)
  10  continue
 3    write(6,*) a,b
      stop
      end
