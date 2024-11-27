 module m1
  logical,parameter::t=.true.,f=.false.
  type x
   logical(2),dimension(4)::d1=t
   logical(2),dimension(4)::d2=t
   logical(2),dimension(4)::d3=t
   logical(2),dimension(4)::d4=t
  end type
   integer::j1=1,k1=1,j2=2
end
use m1
 type(x)::z
   forall(i=1:4)
     where(z%d1(i:i))
     where(z%d2(i:i))
     z%d1(i:i)=f
     z%d2(i:i)=f
     z%d3(i:i)=f
     z%d4(i:i)=f
     end where
     end where
   end forall
   if (any(z%d1))write(6,*) "NG"
   if (any(z%d2))write(6,*) "NG"
   if (any(z%d3))write(6,*) "NG"
   if (any(z%d4))write(6,*) "NG"
   print *,'pass'
end
