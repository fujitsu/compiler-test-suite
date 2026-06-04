module m1
   type h
     integer::h1
   end type
     
   type x
      integer::x1
      integer::x2
      class(h),pointer::x3=>null()
   end type
   type z
      integer::z1  
      type(x)::z2
   end type
   type y
      integer::y1
      integer::y2  
      type(z)::y3
   end type
end
subroutine s
  use m1
  type(y),allocatable::v
      class(h),allocatable::g  
  allocate(v)
  if (associated(v%y3%z2%x3)) print *,205
  if (.not.same_type_as(g,v%y3%z2%x3)) print *,206
end
call ss
call s
print *,'sngg206t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
  
     
