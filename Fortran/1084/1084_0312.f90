integer :: x(2),y(2)
x=10
y=200
call s(x,y)
if(any(x .ne. 50))print*,"101",x
y=20
call s(x,y)
if(any(x .ne. 60))print*,"102",x
print*,"Pass"
contains
subroutine s(a, b)
   implicit none
   integer,  intent(inout) :: a(2)
   integer,  intent(in) :: b(2)
   class(*),allocatable :: obj(:)
   allocate( obj(2),source=b)
   select type(asc=>obj)
   type is(integer)
   where (asc(:) > 100)
         a(:) = 50
   elsewhere (asc(:) < 100)
         a(:)=  60
      end where
   class default
        print*,"102" 
   end  select
   deallocate( obj)
end subroutine 
end
