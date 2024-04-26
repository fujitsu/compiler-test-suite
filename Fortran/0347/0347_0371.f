      program main
      real*8      rv1(130),rv2(130),rsmax,rsmin,rsdif,rssum
      rsmax = 1.7976931348623157D+308

      rv1(1)=19821012.0d0
      rv2(1)=0
      do 10 i=2,130
        rv2(i)=(int(rv1(i-1))*2133333339+3)*((-1)**i)
  10    rv1(i)=(int(rv2(i))*2133333339+3)*((-1)**i)
      rsmin=rsmax
      rssum=0.
      do 20 i=1,130
        rsdif = rv1(i)-rsmin
        if (0.le.rsdif) goto 20
          rssum=rssum+rv1(i)
          rsmin=rv1(i)
          j=i
  20  continue
      write(6,*) j,rsmin,rssum
      rsmin=rsmax
      do 30 i=1,100
        if(rv1(i).lt.0) goto 30
        if(rsmin.le.rv1(i)) goto 30
          rsmin=rv1(i)
          j=rv2(i)
  30  continue
      write(6,*) j,rsmin
      stop
      end
