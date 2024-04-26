      program snqlc01
c
      integer*4      i,a(2048)
      character*2048 ch1,ch2
c
      do 10 i=1,2048
        ch1(i:i)='@'
        ch2(i:i)='@'
   10 continue
      do 20 i=1,2048,512
        a(i)=i
        if (ch1(i:i+511).ne.ch2(i:i+511)) goto 100
   20 continue
      goto 110
  100 write(6,*)'***** tp-error *****'
      write(6,*)'"',ch1,'"'
      write(6,*)'"',ch2,'"'
      goto 120
  110 write(6,*)'***** tp-pass *****'
  120 end
