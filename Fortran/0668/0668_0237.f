      program main
      real ra(10),rb(10),rc(10),
     +     rd(10,10),re(10,10),rf(10,10)
      data ra/1,2,3,4,5,6,7,8,9,10/,
     +     rb/10,9,8,7,6,5,4,3,2,1/,
     +     rd/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     re/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/
     +     rc/10*0/,rf/100*0/,int/1/,itrm/5/,inc/1/
      do 100 i=1,itrm/1,1
        rc(i)=rc(i+itrm)+rb(i)+ra(i)
  100 continue
      write(6,*) ' ****** rc ******'
      write(6,10) rc
   10 format(5f15.6)
      do 110 i=1,itrm,1
        rc(i)=rc(i+itrm)+ra(i)*rb(i)
  110 continue
      write(6,*) ' ****** rc ******'
      write(6,10) rc
      do 120 i=5,int,0-1
        rc(i+int)=rc(i)+ra(i)+rb(i)
  120 continue
      write(6,*) ' ****** rc ******'
      write(6,10) rc
      do 130 i=int,9,1
        rc(i)=rc(i+int)+ra(i)/rb(i)
  130 continue
      write(6,*) ' ****** rc ******'
      write(6,10) rc
      do 140 i=itrm,1,0-1
        rc(i+itrm)=rc(i)+ra(i)**2
  140 continue
      write(6,*) ' ****** rc ******'
      write(6,10) rc
      do 150 i=2,itrm,1
        do 150 j=6,10,inc
          rf(j-itrm,i)=rf(j,i)+rd(j,i)+re(j,i)
          rf(j,i-inc)=rf(j,i)+rd(i,j)+re(j,i)
  150 continue
      write(6,*) ' ****** rf ******'
      write(6,10) rf
      do 160 i=1,5,inc
        do 160 j=i+1,10,inc
          rf(j,j-i)=rf(j,i)+rd(j,i)/re(j,i)
  160 continue
      write(6,*) ' ****** rf ******'
      write(6,10) rf
      do 170 i=1,5,inc
        do 170 j=i+1,10,inc/1
          rf(j,j-inc)=rf(j,i)+rd(j,i)/re(j,i)
  170 continue
      write(6,*) ' ****** rf ******'
      write(6,10) rf
      end
