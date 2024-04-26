      program main
      real*8      rv1(100),rsmax,rsmin,rsdif
      rsmax = 1.7976931348623157D+308
      rv1(1)=19821004.
      do 10 i=2,100
  10    rv1(i)=(int(rv1(i-1))*2133333339+3)*((-1)**i)
      rsmin=rsmax
      do 20 i=1,100
        rsdif = rv1(i)-rsmin
        if (0.lt.rsdif) goto 20
          rsmin=rv1(i)
          j=i
  20  continue
      write(6,*) j,rsmin
      rsmin=rsmax
      do 30 i=1,100
        rsdif=rsmin-rv1(i)
        if (rsdif) 30,30,31
  31      rsmin=rv1(i)
          j=i
  30  continue
      write(6,*) j,rsmin
      stop
      end
