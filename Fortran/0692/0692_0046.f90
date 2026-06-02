        integer*2    i2,i2a(4),i2b(4),i2c(4),i2d(4),i2e(4),i2f(4)
        integer*8    i8,i8a(1)

        parameter (i2=0)
        parameter (i8=z'123456789abcdef0')
        parameter (j41=z'12345678')
        parameter (j42=z'9abcdef0')
        parameter (i8a=(/i8/))
        parameter (i2a=transfer(i8,i2,4)) 
type z
  integer(2) i2
end type
type(z)::z11(4),z12,z13(4)
 parameter(z12=z(0))
        parameter (z11=transfer(i8,z12,4)) 
type x
  integer(8)::i8
end type
type(x)::x1
parameter(x1=x(i8))
type y
  integer(4)::i41
  integer(4)::i42
end type
type(y)::y1
parameter(y1=y(j41,j42))
        parameter (i2c=transfer(x1,i2,4)) 
        parameter (i2e=transfer(y1,i2,4)) 

        i2b=transfer(i8,i2,4) 
        if (any(i2a/=i2b))print *,'fail'
        i2d=transfer(x1,i2,4) 
        if (any(i2c/=i2d))print *,'fail'
        i2f=transfer(y1,i2,4) 
        if (any(i2e/=i2f))print *,'fail'
        z13=transfer(i8,z12,4) 
        if (any(z11%i2/=z13%i2))print *,'fail'
        print *,'pass'
        END
