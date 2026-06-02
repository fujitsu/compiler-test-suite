        integer*2    i2a(4),i2a1,i2a2,i2a3,i2a4
        integer*8    i8,i8a(1),i8b(1)

        parameter (i8=0)
        parameter  (i2a1=z'1234',i2a2=z'5678',i2a3=z'9abc',i2a4=z'def0')
        parameter  (i2a=(/i2a1,i2a2,i2a3,i2a4/))
        parameter (i8a=transfer(i2a,i8,1)) 

        i8b=transfer(i2a,i8,1) 
        if (any(i8a/=i8b))print *,'fail'
        print *,'pass'
        END
