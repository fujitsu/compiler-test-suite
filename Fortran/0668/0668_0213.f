      program main
      real real1(10)/10*1./,real2(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      logical l(10)/3*.true.,4*.false.,3*.true./
      common /block/commb(10),scomb
      equivalence (equs1,real1),(equs2,scomb)
       call sub1
      do 100 i=1,10
       equs1=commb(i)
       if(l(i))  real2(1)=i*10
  100 continue
      if(real(10).gt.100) then
       write(6,1001) equs1
       write(6,1001) equs2
       write(6,1000) real2
      endif
      write(6,1000) commb
      do 200 i=1,10
       equs1=commb(i)
       if(l(i)) real2(2)=i*10
  200 continue
      if(real2(10).gt.100) then
       write(6,1001) equs1
       write(6,1001) equs2
      endif
      write(6,1000) commb
 1000 format(10f7.3)
 1001 format(f7.3)
      stop
      end
      subroutine sub1
      common /block/a(10),b
      b=0
      do 10 i=1,10
       a(i)=i
       b=a(i)+1
   10 continue
      return
      end
