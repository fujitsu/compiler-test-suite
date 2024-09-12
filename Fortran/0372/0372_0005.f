      program main
      integer*4      i,a(2048)
      integer*8      bsp
      character*2048 ch1,ch2
      character*512  ch
      pointer(bsp,ch(0:3))
      bsp=loc(ch1)
      do 10 i=1,2048
        ch1(i:i)='@'
        ch2(i:i)='@'
   10 continue
      do 20 i=1,2048,512
        a(i)=i
        if (ch(i/512).ne.ch2(i:i+511)) goto 100
   20 continue
      goto 110
  100 write(6,*)'***** tp-error *****'
      write(6,*)'"',ch1,'"'
      write(6,*)'"',ch2,'"'
      goto 120
  110 write(6,*)'***** tp-pass *****'
  120 end
