      program main
      real ra(-10:9),rb(-10:9),rc(-10:9),
     +     rd(10,10),re(10,10),rf(10,10)
      data ra/1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1/,
     +     rb/10,9,8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8,9,10/,
     +     rd/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     re/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/
     +     rc/20*0/,rf/100*0/,int/-1/,itrm/-5/,inc/1/
      data int1/1/,itrm1/5/,inc1/1/,
     +     int2/-1/,itrm2/-4/
      do 100 i=0-1,0-5,0-inc
        do 100 j=int,int+5,1
          rc(j+i)=rc(j)+ra(j)
  100 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
   10 format(5f15.6)
      do 110 i=0-5,0-1,inc
        do 110 j=int,int+5,1
          rc(j+i)=rc(j)+rb(j)
  110 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 120 i=0-1,itrm,0-1
        do 120 j=int,int+5,1
          rc(j+i)=rc(j)+rb(j)+ra(j)
  120 continue
      write(6,*) ' ***** rc *****'
      write(6,10) rc
      do 130 i=1,itrm1+1,1
        do 130 j=int1+5,int1+9,1
          rf(j-itrm1,i)=rf(j,i)+rd(j,i)
  130 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 140 i=1,1-itrm2,1
        do 140 j=int1+4,int1+9,1
          rf(j+itrm2,i)=rf(j,i)+re(j,i)
  140 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 150 i=int1,itrm1,1
        do 150 j=int1,int1+4,1
          rf(j+int1,i)=rf(j+itrm1,j)+re(j,i)
  150 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 160 i=0-int2,0-itrm2,1
        do 160 j=int1+4,int1+9,1
          rf(j+itrm2,i)=rf(j+int2,i)+re(j,i)
  160 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      do 170 i=1,5*int1,1
        do 170 j=int1+3,int1+8,1
          rf(j,i)=rf(j+int1,i)+rd(j,i)
  170 continue
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      end
