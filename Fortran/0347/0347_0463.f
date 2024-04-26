      program main
      dimension a(11),b(11),x(11)
      data b/11*1.0/

      do 20 j=1,11
      x(j)=j
  20  a(j)=j

      do 10 i=1,10
        ss=b(i)
        if(a(i).gt.5.) then
          x(3)=1.2
          go to 1
        else
          x(i)=2.2
        endif
        b(i)=a(i)+x(i)
  10  continue
 1    write(6,*) a,b
      stop
      end
