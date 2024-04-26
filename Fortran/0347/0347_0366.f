      implicit    real*8(d)
      real   *4   rv1(10),rv2(10),rv3(10),rs/0.125/
      do 1 i=1,10
        rv1(i)=i
        rv2(i)=-i*i
  1     rv3(i)=rv2(i)*rv1(i)
      do 10 i=1,10
        dst1 = dprod(rs,rv1(i))
        rst2 = real(dst1) * rv2(i)
        rs   = rv3(i)*rst2
  10  continue
       write(6,*) rs
      rs=0.125
      do 20 i=1,10
        rst1 = rs * rv1(i)
        dst2 = dprod(rst1,rv2(i))
        rs   = rv3(i)*dst2
  20  continue
       write(6,*) rs
       stop
       end
