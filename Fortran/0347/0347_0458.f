      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        if(a(i).gt.8.) go to 1
        if(a(i).lt.5.) then
          ss=i*1.0
        else
          ss=i*1.5
          go to 2
        endif
   1    ss=1.
        b(i)=a(i)+1.+ss
  10  continue
 2    write(6,*) b
      stop
      end
