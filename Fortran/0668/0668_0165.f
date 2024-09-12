      integer*4  i400x(5,5,5),i400y(5,5,5),i400z(5,5,5)
      real*4     r400x(10,10),r400y(10),r400z(10,10)
      real*8     r800x(10,10),r800y(10,10),r800z(10,10)
      complex*8  c800x(10,10),c800y(10),c800z(10)
      complex*16 c1600a(10,10),c1600x(10,10),c1600y(10),c1600z(10)
      logical*4  l400x(5,5,5),l400y(10),l400z(10)
      data       i400x/125*0/
      data       i400y/1,3,5,7,9,60*4,60*5/
      data       i400z/60*1,60*2,5,4,3,2,1/
      data       r400x/100*0/
      data       r400y/2,4,6,8,2,4,6,8,2,4/
      data       r400z/100*0/
      data       r800x/100*0/
      data       r800y/20*2,20*3,20*4,20*5,20*6/
      data       r800z/50*5,50*6/
      data       c800x/100*(0,0)/
      data       c800y/5*(2.,3.),5*(3.,4.)/
      data       c800z/5*(2.,3.),4*(1.,0.),(0.,1.)/
      data       c1600a/100*(0,0)/
      data       c1600x/100*(0,0)/
      data       c1600y/5*(0,1),5*(2,3)/
      data       c1600z/5*(0,1),5*(4,2)/
      data       l400x/125*.false./
      data       l400y/.true.,.true.,.false.,.true.,.false.,.true.,
     &                 .true.,.true.,.false.,.false./
      data       l400z/.false.,.true.,.false.,.true.,.true.,.true.,
     &                 .true.,.false.,.false.,.false./
      do 10 i=1,5
      do 11 j=1,5
      do 12 k=1,5
        i400x(3,4,5)=i400y(i,j,k)
        i400z(i,1,2)=i400x(5,5,5)
   12 continue
   11 continue
   10 continue
      write(6,*) '** test 1 **'
      write(6,111) i400x
      write(6,111) i400z
      do 20 i=1,10
        r400x(3,5)=r400y(i)
      do 21 j=1,10
        r400z(j,i)=r400x(3,5)
   21 continue
   20 continue
      write(6,*) ' '
      write(6,*) '** test 2 **'
      write(6,222) r400x
      write(6,222) r400z
      do 30 i=1,10
        r800x(i,5)=r800y(2,3)
      do 31 j=1,10
        r800y(3,3)=r800z(i,j)
   31 continue
   30 continue
      write(6,*) ' '
      write(6,*) '** test 3 **'
      write(6,333) r800y
      n=0
      do 40 i=1,n,2
        do 41 j=1,10
          c800x(5,3)=c800y(j)+c800z(j)
   41   continue
        do 42 k=1,10
          c800x(7,5)=c800y(k)-c800z(k)
   42   continue
   40 continue
      write(6,*) ' '
      write(6,*) '** test 4 **'
      write(6,444) c800x
      do 50 i=1,n,2
        do 51 j=1,10
          c1600x(5,3)=c1600y(i)+c1600z(i)
   51   continue
        do 52 k=1,10
          c1600a(k,i)=c1600x(5,3)-c1600z(i)
   52   continue
   50 continue
      write(6,*) ' '
      write(6,*) '** test 5 **'
      write(6,555) c1600x
      n=4
      do 60 i=1,5
        l400x(1,5,1)=l400y(i)
        do 60 j=1,n
          l400x(2,4,j)=l400z(j)
          do 60 k=1,5
            l400x(3,k,1)=l400y(i).and.l400z(i)
   60 continue
      write(6,*) ' '
      write(6,*) '** test 6 **'
      write(6,666) l400x
  111 format(2x,10i2)
  222 format(10f7.3)
  333 format((5f12.6))
  444 format(2(2x,'(',f8.4,',',f8.4,')'))
  555 format(2(2x,'(',f12.8,',',f12.8,')'))
  666 format(10l2)
      stop
      end
