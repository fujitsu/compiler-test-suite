      integer*2,parameter,dimension(2,3) ::i2x=10
      integer*4                ::n4(2,3)
      parameter(n4=dim(i2x,1))

if (any(n4/=9))print *,201
      print *,'pass'
      end
