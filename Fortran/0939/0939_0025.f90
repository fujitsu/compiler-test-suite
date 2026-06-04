 integer::v(3)=[3,1,5],c(5),arr(3)=[30,10,50]
 c=[10,20,30,40,50]
 call s1( c(v),arr)
 if(any(c /= [100,20,100,40,100]))print*,102
 print*,"PASS"
 contains
 elemental impure subroutine s1( d1,d2)
 integer,intent(inout),volatile::d1
 integer,intent(in)::d2 
  if(d1/=d2) print*,101
  d1 = 100
 end
end

