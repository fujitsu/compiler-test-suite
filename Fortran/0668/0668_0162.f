      integer*4  i400x(10),i400y(10),i4x/33/
      real*4     r400x(10),r400y(10),r4x/33/
      real*8     r800x(10),r800y(10),r8x/33/
      complex*8  c800x(10),c800y(10),c8x/(33.,22)/
      complex*16 c1600x(10),c1600y(10),c16x/(33.,22.)/
      logical*4  l400x(10),l400y(10),l4x/.true./
      data       i400x/10*0/
      data       r400x/10*0/
      data       r800x/10*0/
      data       c800x/10*(0,0)/
      data       c1600x/10*(0,0)/
      data       l400x/10*.false./
      data       i400y/1,3,5,7,9,7,5,3,1,3/
      data       r400y/2,4,6,8,2,4,6,8,2,4/
      data       r800y/3,4,5,6,7,8,1,2,3,4/
      data       c800y/5*(2.,3.),5*(3.,4.)/
      data       c1600y/5*(2.,3.),5*(3.,4.)/
      data       l400y/10*.true./
      do 10 i=1,10
        i400x(1)=i400y(i)
        r400x(2)=r400y(i)
        r800x(5)=r800y(i)
        c800x(9)=c800y(i)
        c1600x(10)=c1600y(i)
        l400x(1)=l400y(i)
   10 continue
      write(6,*) '** test 1 **'
      write(6,*) ' '
      write(6,111) i400x
      write(6,222) r400x
      write(6,333) r800x
      write(6,444) c800x
      write(6,555) c1600x
      write(6,666) l400x
      n=5+4
      do 20 i=1,n
        i400y(1)=i400x(1)
        r400y(2)=r400x(2)
        r800y(5)=r800x(3)
        c800y(9)=c800x(4)
        c1600y(10)=c1600x(5)
        l400y(1)=l400x(10)
   20 continue
      write(6,*) ' '
      write(6,*) '** test 2 **'
      write(6,*) ' '
      write(6,111) i400y
      write(6,222) r400y
      write(6,333) r800y
      write(6,444) c800y
      write(6,555) c1600y
      write(6,666) l400y
      n=5+4
      do 30 i=1,n,2
        i400y(1)=i4x
        r400y(2)=r4x
        r800y(5)=r8x
        c800y(9)=c8x
        c1600y(10)=c16x
        l400y(1)=l4x
   30 continue
      write(6,*) ' '
      write(6,*) '** test 3 **'
      write(6,*) ' '
      write(6,111) i400y
      write(6,222) r400y
      write(6,333) r800y
      write(6,444) c800y
      write(6,555) c1600y
      write(6,666) l400y
      n=5+5
      do 40 i=1,n
        i400y(n)=55
        r400y(n)=55
        r800y(n)=55
        c800y(n)=55
        c1600y(n)=55
        l400y(n)=.false.
   40 continue
      write(6,*) ' '
      write(6,*) '** test 4 **'
      write(6,*) ' '
      write(6,111) i400y
      write(6,222) r400y
      write(6,333) r800y
      write(6,444) c800y
      write(6,555) c1600y
      write(6,666) l400y
  111 format(2x,10i2)
  222 format(/,10f7.3)
  333 format(/,(5f12.6))
  444 format(/,2(2x,'(',f8.4,',',f8.4,')'))
  555 format(/,2(2x,'(',f12.8,',',f12.8,')'))
  666 format(/,10l2)
      stop
      end
