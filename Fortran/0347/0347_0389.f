      program main
      logical*4   lv1(100),lsmax
      do 10 i=1,100
  10    lv1(i)=mod(i,3).eq.2
      lsmax=.false.
      do 20 i=1,100
        if (lv1(i).and.lsmax) goto 20
          lsmax=lv1(i)
          j=i
  20  continue
      write(6,*) j,lsmax
      stop
      end
