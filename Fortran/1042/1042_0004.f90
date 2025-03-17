elemental function fun(a) result(rr)
 integer,intent(in)::a
 integer::rr
 rr = a + 1
end function

subroutine sub(n)

 interface
  elemental function fun(a) result(rr)
   integer,intent(in)::a
   integer::rr
  end function
 end interface

 integer::a(n),b(n)
 a=10
 b=fun(a)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
