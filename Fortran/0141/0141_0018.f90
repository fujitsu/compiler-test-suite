module m1
  type x
   integer::x=1
  end type
  type(x)::var
end
use m1
if (var%x/=1)print *,1
print *,'pass'
end 
