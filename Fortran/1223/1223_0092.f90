module m1
   type h
     integer::h1
   end type
     
   type x
      integer::x1
      class(h),pointer::x3
   end type
   type y
      integer::y1
      type(x)::y3=x(3,null())
   end type
end
subroutine s
  use m1
  type(y),allocatable::v
      class(h),allocatable::g  
  allocate(v)
  if (v%y3%x1/=3) print *,203
  if (associated(v%y3%x3)) print *,205
  if (.not.same_type_as(g,v%y3%x3)) print *,206
end
call ss
call s
print *,'sngg204t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
  
     
