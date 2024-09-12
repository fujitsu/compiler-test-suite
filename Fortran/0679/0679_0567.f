      program main
      real*4    ra(10),rb(10),rc(10),rd(10),re(10),rf(10),rg(10)
      real*8    da(10)
      data rb/10*1.23456/,rc/10*2.34567/,rd/10*2.35678/
      data re/10*1.23456/,rf/10*2.34567/,rg/10*2.35678/
      data s1/1.11111/,s2/2.22222/,s3/3.33333/
      do 10 i=1,10
        da(i) = rb(i)*rc(i) + rd(i)*s1 + re(i)*(s2+s3/rf(i))*rg(i)
  10  continue
      write(6,*) da
      stop
      end
