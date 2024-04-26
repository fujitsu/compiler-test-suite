      real   *8     r1(10)
      complex*16    c1(10)
      integer*2     i1(10)
      data   r1/10*1.0/,i1/10*2/
      do 10 i=1,10
        c1(i)=i1(i)+r1(i)
  10  continue
      write(6,*) r1,c1,i1
      stop
      end
