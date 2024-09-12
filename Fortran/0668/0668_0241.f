      program main
      real rd(10,10),re(10,10),rf(10,10),
     +     ra(-10:-1,-10:-1),
     +     rb(-10:-1,-10:-1),
     +     rc(-10:-1,-10:-1)
      data rd/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     re/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/,
     +     rf/100*0/,int/1/,itrm/5/,inc/1/,
     +     int1/-1/,itrm1/-5/
      data ra/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     rb/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/,
     +     rc/100*0/
      do 100 i=2,2*itrm,1
        do 100 j=int+5,itrm+5,1
          rf(j-itrm,i)=rf(j,i)+re(j,i)
  100 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
   10 format(5f15.6)
      do 110 i=2,0-itrm1*2,1
        do 110 j=int+5,itrm+5,1
          rf(j+itrm1,i)=rf(j,i)+rd(j,i)
  110 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 120 i=int,itrm,1
        do 120 j=int+4,int+9,1
          rf(j-int,i)=rf(j,i)*rd(j,i)
  120 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 130 i=int,itrm,1
        do 130 j=int+4,int+9,1
          rf(j-itrm+1,i)=rf(j,i)*re(j,i)
  130 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 140 i=0-1,itrm1,0-1
        do 140 j=0-6,0-10,0-1
          rc(j-itrm1,i)=rc(j,i)+ra(j,i)+rb(j,i)
  140 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 150 i=0-1,0-itrm,0-1
        do 150 j=0-6,0-10,0-1
          rc(j+itrm,i)=rc(j,i)+ra(j,i)*rb(j,i)*rb(j,i)
  150 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 160 i=itrm,1,0-1
        do 160 j=6,10,1
          rf(j-itrm,i)=rf(j,i)+rd(j,i)**3
  160 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 170 i=0-itrm1,1,0-1
        do 170 j=6,10,1
          rf(j+itrm1,i)=rf(j,i)+rd(j,i)**3
  170 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      end
