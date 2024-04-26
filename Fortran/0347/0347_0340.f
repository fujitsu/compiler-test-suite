      real*4 a(5000),b(5000)
      character*1   chr(5000)
      logical*1     l1(5000),l2(5000)
      integer*2   h
      do 10 i=1,5000
        a(i)=float(i)
        chr(i)='x'
        l1(i)=.false.
        if (i.gt.2500) goto 10
          l2(2*i)=.false.
          l2(2*i-1)=.true.
  10  continue
      do 20 h=2,350
        b(h)=a(h)+a(h+3000)
        l1(h+300)=.not.l1(h+4600)
        l2(h+4200)=l1(h).or.l2(h)
        if (l2(h+4120)) then
          chr(h+4650)='z'
        else
          chr(h+1000)='y'
        endif
  20  continue
       write(6,*) (chr(j),j=1000,1300)
       write(6,*) (chr(j),j=4500,5000)
       write(6,*) (l1(j),j=300,650)
       write(6,*) (l2(j),j=4200,4550)
       stop
       end
