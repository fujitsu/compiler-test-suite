        integer*4    i4,i4a(2),i4b(2),j4a(2),j4b(2)
        integer*8    i8,i8a(1)
        parameter (i8=z'1111111122222222')
        parameter (ii41=z'12345678')
        parameter (ii42=z'90abcdef')
        type x1
          integer(8)::i8
        end type
        type(x1),parameter::xx=x1(i8)
        type x2
          integer(4)::i41
          integer(4)::i42
        end type
        type(x2),parameter::yy=x2(ii41,ii42)
        parameter (i4=0)
        parameter (i8a=(/i8/))
        parameter (i4a=transfer(xx,i4,2)) 
        parameter (j4a=transfer(yy,i4,2)) 

        i4b=transfer(xx,i4,2) 
        if (any(i4a/=i4b))print *,'fail'
        j4b=transfer(yy,i4,2) 
        if (any(j4a/=j4b))print *,'fail'
        print *,'pass'
        END
