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

 type tdef
  integer,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a=10
 tt%b=fun(tt%a)

  print *,'pass'
  
end subroutine

 call sub(10)
end
