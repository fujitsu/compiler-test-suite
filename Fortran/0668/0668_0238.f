      program main
      real ra(-10:-1),rb(-10:-1),rc(-10:-1),
     +     rd(10,10),re(10,10),rf(10,10)
      data ra/1,2,3,4,5,6,7,8,9,10/,
     +     rb/10,9,8,7,6,5,4,3,2,1/,
     +     rd/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     re/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/
     +     rc/10*0/,rf/100*0/,int/-1/,itrm/-5/,inc/-1/
      do 100 i=-1,-9,-1
        rc(i)=rc(i-1)+ra(i)+rb(i)
  100 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
   10 format(5f15.6)
      do 110 i=-9,-1,inc
        rc(i+inc)=rc(i)+rb(i)+ra(i)
  110 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 120 i=-2,-9,inc
        rc(i-inc)=rc(i)+rb(i)-ra(i)
  120 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 130 i=int,-5,-1
        rc(i-int-1)=rc(i)+rb(i)
        rc(i-1)  =rc(i)+ra(i)
  130 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 140 i=itrm,-1,1
        rc(i+itrm)=rc(i)+rb(i)
  140 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 150 i=-1,itrm,-1
        rc(i+itrm)=rc(i)*ra(i)
  150 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 155 i=-10,int-1,1
        rc(i-int)=rc(i)+rb(i)
  155 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 160 i=-10,-6,0-inc
        rc(i-inc)=rc(i)+ra(i)
        inc=inc-1
  160 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      end
