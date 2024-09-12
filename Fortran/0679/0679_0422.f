      program main
      dimension ia(10),ib(10),ic(10)
      data ia/10*1/,ib/10*2/,ic/10*1/
      logical*1 l1(10)/10*.true./
      logical*4 l4(10)/10*.true./
      do 10 i=1,10
        ia(i) = ic(i)**3
        l1(i) = ia(i) .gt. ib(i)
        l4(i) =  .not. l1(i)
  10  continue
      write(6,*) l1
      write(6,*) l4,' i = ',i
      stop
      end
