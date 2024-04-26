      program main
      dimension a(11),b(11),x(11)
      data b/11*1.0/,x/11*0.0/

      do 20 j=1,11
  20  a(j)=j

      do 10 i=1,10
        ss=b(2)
        if(a(9).gt.5.+ss) then
          x(i)=1.2
          go to 1
        else
          x(i)=2.2
        endif
        b(i)=a(i)+x(i)
  10  continue
 1    write(6,*) a,b,x

      b(2)=1.
      do 110 i=1,10
        ss=b(2)
        if(a(9).le.5.0+ss) then
          x(i)=1.2
          go to 11
        else
          x(i)=2.2
        endif
        b(i)=a(i)+x(i)
 110  continue
 11   write(6,*) a,b,x
      stop
      end
