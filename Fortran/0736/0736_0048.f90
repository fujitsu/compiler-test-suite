module m1
 type x
   integer::i1
   integer::i2
 end type
 INTERFACE OPERATOR(/)
   MODULE PROCEDURE num_div_num
 END INTERFACE  OPERATOR(/)
 contains
    FUNCTION num_div_num(u1,u2)
     type(x),INTENT(IN) :: u1,u2
     type(x) :: num_div_num
     num_div_num%i1 = u1%i1/u2%i1
     num_div_num%i2 = u1%i2/u2%i2
    end function
end
use m1
     type(x):: u1,u2
u1=x(100,200)
u2=x(10,20)
write(13,*) u1/u2
rewind 13
read (13,*) j1,j2
if (any((/j1,j2/)/=10))print *,'error'
print *,'pass'
end
