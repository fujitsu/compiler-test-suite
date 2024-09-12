      real * 4     ra1(100),rb1(100),rc1(100),
     #             rd1(100),re1(100),rf1(100),
     #             ra2(3,100),rb2(3,100),rc2(3,100),
     #             xa(100,100),xb(100,100)
      common /blk1/ra1,rb1,rc1,rd1,re1,rf1
      common /blk2/ra2,rb2,rc2
      common /blk3/xa,xb
      call init
      do 100 j = 1 , 100
        ra1(j) = rb1(j) + rc1(j)
        rb1(j) = rc1(j) - ra1(j)
        rc1(j) = ra1(j) + rb1(j)
        do 110 i = 1 , 3
           ra2(i,j) = rc2(i,j) + ra1(j)
           rb2(i,j) = ra2(i,j) + rb1(j)
           rc2(i,j) = rb2(i,j) + rc1(j)
           ra1(j) = ra1(j) + 1
           rb1(j) = rb1(j) + 2
           rc1(j) = rc1(j) + 3
  110   continue
        do 120 i = 1 , 3
           rd1(j) = rd1(j) + ra2(i,j)
           re1(j) = re1(j) + rb2(i,j)
           rf1(j) = rf1(j) + rc2(i,j)
  120   continue
        do 130 i = 1 , 100
           xa(i,j) = xa(i,j) + xb(i,j)
  130   continue
  100 continue
      write(6,  *) ' result rd '
      write(6,  *) rd1
      write(6,  *) ' result re '
      write(6,  *) re1
      write(6,  *) ' result rf '
      write(6,  *) rf1
      write(6,  *) ' result xa '
      write(6,  *) (xa(l,l),l=1,100)
      stop
      end
      subroutine init
      real * 4     ra1(100),rb1(100),rc1(100),
     #             rd1(100),re1(100),rf1(100),
     #             ra2(3,100),rb2(3,100),rc2(3,100),
     #             xa(100,100),xb(100,100)
      common /blk1/ra1,rb1,rc1,rd1,re1,rf1
      common /blk2/ra2,rb2,rc2
      common /blk3/xa,xb
      do 100 j = 1 , 100
        ra1(j) = j
        rb1(j) = j + 1
        rc1(j) = j + 2
        rd1(j) = 100 - j
        re1(j) =  99 - j
        rf1(j) =  98 - j
        do 110 i = 1 , 3
          ra2(i,j) = i
          rb2(i,j) = i + 1
          rc2(i,j) = i + 2
  110   continue
        do 120 i = 1 , 100
          xa(i,j) = i
          xb(i,j) = i
  120   continue
  100 continue
      return
      end
