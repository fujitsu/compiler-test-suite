module m1
   type x
      integer::x1=3
      integer::x2=4
      integer,pointer::x3
   end type
   type z
      integer::z1  
      type(x)::z2
   end type
   type y
      integer::y1=1
      integer::y2  
      type(z)::y3=z(1,x(3,4,null()))
      integer,pointer::y4
   end type
end
subroutine s
  use m1
  type(y),allocatable::v
  allocate(v)
  if (v%y1/=1) print *,202
  if (v%y3%z2%x1/=3) print *,203
  if (v%y3%z2%x2/=4) print *,204
  if (associated(v%y3%z2%x3)) print *,205
end
call ss
call s
print *,'sngg202t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
  
     
