pure function fun(z,a) result(rr)
 integer,intent(in)::z(:),a(:)
 integer::rr(size(a))
 rr = a(1) + 1 + z(2)
end function

subroutine sub(n)

 interface
  pure function fun(z,a) result(rr)
   integer,intent(in)::z(:),a(:)
   integer::rr(size(a))
  end function
 end interface

 integer::z(n),a(n),b(n)
 a(1)=10
 z(2)=20
 b=fun(z,a)

 if ( b(10) == 31 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
