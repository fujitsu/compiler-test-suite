      program main
      real*8      rv1(100),rsmax,rsmin
      rsmin = -1.7976931348623157D+308
      rv1(1)=19821004.
      do 10 i=2,100
  10    rv1(i)=int(rv1(i-1))*2133333339+3
      rsmax=rsmin
      do 20 i=1,100
        if (rv1(i).lt.rsmax) goto 20
          rsmax=rv1(i)
          j=i
  20  continue
      write(6,*) j,rsmax
      rsmax=rsmin
      do 30 i=1,100
        if (rv1(i).le.rsmax) goto 30
          rsmax=rv1(i)
          j=i
  30  continue
      write(6,*) j,rsmax
      stop
      end
