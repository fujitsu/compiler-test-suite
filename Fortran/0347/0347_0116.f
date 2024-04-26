      program main
      implicit   real*8(d),logical*4(l),complex*16(c)
      common   /blk1/   da10(20),da20(20),da30(20),da40(20)
      dimension    darg1(30),darg2(30)
      equivalence   (da10(1),darg1(1)),(da30(1),darg2(1))
      do 10 i=1,20
        da10(i) = 1.d0
        da20(i) = 2.d0
        da30(i) = 3.d0
        da40(i) = 4.d0
 10   continue
      do 20 j=1,10
        da20(j) = da20(j) + da40(j)
        darg2(j+20) = da20(j) * da40(j)
        da20(j+1) = darg1(j+20) * 3.d0
 20   continue
      write(6,*) ' (da10) ',da10
      write(6,*) ' (da20) ',da20
      write(6,*) ' (da40) ',da40
      stop
      end
