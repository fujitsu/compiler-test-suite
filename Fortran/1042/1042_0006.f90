elemental function fun(z,a) result(rr)
 integer,intent(in)::z,a
 integer::rr
 rr = a + 1 + z
end function

subroutine sub(n)

 interface
  elemental function fun(z,a) result(rr)
   integer,intent(in)::z,a
   integer::rr
  end function
 end interface

 integer::z(n),a(n),b(n)
 a=10
 z=20
 b=fun(z,a)

  print *,'pass'
  
end subroutine

 call sub(10)
end
