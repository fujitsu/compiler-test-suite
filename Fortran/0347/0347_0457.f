      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,9
        if(a(i).gt.5.) go to 1
          a(i+1)=b(i)+a(i)
  10  continue
 1    write(6,*) a,b
      stop
      end
