 module m1
  logical,parameter::t=.true.,f=.false.
  type x
   logical(2),dimension(10)::d1=(/t,t,t,t,t,f,f,f,f,f/)
   logical(2),dimension(10)::d2=(/t,t,t,t,t,f,f,f,f,f/)
   logical(2),dimension(10)::d3=(/t,t,t,t,t,f,f,f,f,f/)
   logical(2),dimension(10)::d4=(/t,t,t,t,t,f,f,f,f,f/)
   logical(8),dimension(10)::e1=(/f,f,f,f,f,t,t,f,f,f/)
   logical(8),dimension(10)::e2=(/f,f,f,f,f,t,t,f,f,f/)
   logical(8),dimension(10)::e3=(/f,f,f,f,f,t,t,f,f,f/)
   logical(8),dimension(10)::e4=(/f,f,f,f,f,t,t,f,f,f/)
   logical(8),dimension(10)::f1=(/f,f,f,f,f,f,f,t,t,f/)
   logical(8),dimension(10)::f2=(/f,f,f,f,f,f,f,t,t,f/)
   logical(8),dimension(10)::f3=(/f,f,f,f,f,f,f,t,t,f/)
   logical(8),dimension(10)::f4=(/f,f,f,f,f,f,f,t,t,f/)
   logical(8),dimension(10)::g1=(/f,f,f,f,f,f,f,f,f,t/)
   logical(8),dimension(10)::g2=(/f,f,f,f,f,f,f,f,f,t/)
   logical(8),dimension(10)::g3=(/f,f,f,f,f,f,f,f,f,t/)
   logical(8),dimension(10)::g4=(/f,f,f,f,f,f,f,f,f,t/)
   logical(8),dimension(10)::x=f
  end type
   integer::j1=1,k1=1,j2=2
end
use m1
 type(x)::z
   forall(i=1:10)
    where(z%d1(i:i))
     where(z%d2(i:i))
     z%d1(i:i)=f
     z%d2(i:i)=f
     z%d3(i:i)=f
     z%d4(i:i)=f
     else where
     z%x(i:i)=t
     end where
    else where(z%e1(i:i))
         where(z%e2(i:i))
     z%e1(i:i)=f
     z%e2(i:i)=f
     z%e3(i:i)=f
     z%e4(i:i)=f
     else where
     z%x(i:i)=t
         end where
     else where(z%f1(i:i))
            where(z%f2(i:i))
     z%f1(i:i)=f
     z%f2(i:i)=f
     z%f3(i:i)=f
     z%f4(i:i)=f
     else where
     z%x(i:i)=t
            end where
     else where(z%g1(i:i))
                 where(z%g2(i:i))
     z%g1(i:i)=f
     z%g2(i:i)=f
     z%g3(i:i)=f
     z%g4(i:i)=f
     else where
     z%x(i:i)=t
                  end where
     else where
     z%x(i:i)=t
    end where
   end forall
   if (any(z%d1))write(6,*) "NG"
   if (any(z%d2))write(6,*) "NG"
   if (any(z%d3))write(6,*) "NG"
   if (any(z%d4))write(6,*) "NG"
   if (any(z%e1))write(6,*) "NG"
   if (any(z%e2))write(6,*) "NG"
   if (any(z%e3))write(6,*) "NG"
   if (any(z%e4))write(6,*) "NG"
   if (any(z%f1))write(6,*) "NG"
   if (any(z%f2))write(6,*) "NG"
   if (any(z%f3))write(6,*) "NG"
   if (any(z%f4))write(6,*) "NG"
   if (any(z%g1))write(6,*) "NG"
   if (any(z%g2))write(6,*) "NG"
   if (any(z%g3))write(6,*) "NG"
   if (any(z%g4))write(6,*) "NG"
   if (any(z%x))write(6,*) "NG"
   print *,'pass'
end
