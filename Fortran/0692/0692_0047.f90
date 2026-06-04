        integer*2    i2a(4),i2a1,i2a2,i2a3,i2a4
        integer*8    i8,i8a(1),i8b(1),i8c(1),i8d(1)

        parameter (i8=0)
        parameter  (i2a1=z'1234',i2a2=z'5678',i2a3=z'9abc',i2a4=z'def0')
        parameter  (i2a=(/i2a1,i2a2,i2a3,i2a4/))
        parameter (i8a=transfer(i2a,i8,1)) 
type x
 integer(2)::i21
 integer(2)::i22
 integer(2)::i23
 integer(2)::i24
end type
type(x)::x11,x12,x13
parameter(x11=x(i2a1,i2a2,i2a3,i2a4))
        parameter (i8c=transfer(x11,i8,1)) 

        i8b=transfer(i2a,i8,1) 
        if (any(i8a/=i8b))print *,'fail'
        i8d=transfer(x11,i8,1) 
        if (any(i8c/=i8d))print *,'fail'
        print *,'pass'
        END
