      program main
      real*4 ra(10,10),rb(10,10),rc(10,10),
     +       rd(10,10),re(10,10),rf(10,10),
     +       rx(3,3,3,3),ry(3,3,3,3),rz(3,3,3,3)
      data   ra/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +       rb/10*1,10*3,10*5,10*7,10*9,10*2,10*4,10*6,10*8,10*10/,
     +       rc/100*0/,rd/100*1/,re/100*2/,rf/100*3/
     +       rx/27*5,27*10,27*-9/,ry/27*-9,27*26,27*7/,rz/81*0/,
     +       n/10/,m/3/
      do 100 i=1,10
        do  100 j=1,10
          rc(j,i)=ra(j,i)+rb(j,i)*2
  100 continue
      write(6,*) ' ************** rc **************'
      write(6,10) rc
   10 format(5f15.7)
      do 200 i=1,10
        do 200 j=1,10
          rd(j,i)=rd(j,i)+ra(j,i)+rb(j,i)
  200 continue
      write(6,*) ' ************** rd **************'
      write(6,10) rd
      do 300 i=1,n
        do 300 j=1,10
          re(j,i)=re(i,j)+ra(j,i)*2+rb(j,i)
  300 continue
      write(6,*) ' ************** re **************'
      write(6,10) re
      do 400 i=1,10
        do 400 j=1,10
          rf(j,i)=rf(i,j)+ra(j,i)+rb(j,i)*3
  400 continue
      write(6,*) ' ************** rf **************'
      write(6,10) rf
      do 500 i=1,3
        do 500 j=1,m
          do 500 k=1,3
            do 500,l=1,m
              rz(i,j,k,l)=rz(i,j,k,l)+rx(i,j,k,l)+ry(i,j,k,l)
  500 continue
      write(6,*) ' ************** rz **************'
      write(6,10) rz
      end
