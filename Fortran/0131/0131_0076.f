      real*8        b,x,y,r
      real*8       rd1,rd2,rd4,rdx,pai
      common /a/rd1,a,b
      data pai/3.1415/
      data r  /20.0/
      data rd2  /0.0/
      data rd4  /0.0/
      c=4*pai*r**2
      d=pai*r**2
      a=d+c
      b=a+c
      rd1=rd2+rd4
      print *,a,b,rd1
      end
