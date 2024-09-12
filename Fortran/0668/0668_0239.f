      program main
      real ra(-10:9),rb(-10:9),rc(-10:9),
     +     rd(10,10),re(10,10),rf(10,10)
      data ra/1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1/,
     +     rb/10,9,8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8,9,10/,
     +     rd/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     re/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/
     +     rc/20*0/,rf/100*0/,int/-1/,itrm/-1/,inc/1/
     +     int1/1/,itrm1/5/,inc1/1/,itrm2/6/
      do 100 i=-4,4,inc
        rc(i-inc)=rc(i)+ra(i)+rb(i)
  100 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
   10 format(5f15.6)
      inc=-inc
      do 110 i=3,-4,inc
        rc(i-inc)=rc(i)*rb(i)
  110 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 120 i=0-4,itrm,1
        rc(i-itrm-5)=rc(i)-rb(i)
  120 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 130 i=1,5,inc1
        do 140 j=itrm1+1,itrm1+5,inc1
          rf(j-i,i)=rf(j,i)+rd(j,i)*re(j,i)
  140   continue
        do 150 j=int1,itrm1,1
          rf(j+int1,i)=rf(j+itrm1,i)-re(j,i)
  150   continue
  130 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 160 i=5,int1,0-1
        do 160 j=itrm2,10,1
          rf(j-i,i)=rf(j,i)+rd(j,i)
  160 continue
      do 161 i=10,itrm1,0-1
        do 161 j=4,int1,0-1
          rf(j,i-j)=rf(j,i)+re(j,i)
  161 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 170 i=5,1,0-1
        do 170 j=itrm2,itrm2+4,1
          rf(j-i,i)=rf(j,i)*re(j,i)
  170 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 180 i=0-5,0-1,1
        do 180 j=itrm2,itrm2+4,1
          rf(j+i,i+6)=rf(j,i+6)*rd(j,i+6)
  180 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      stop
      end
