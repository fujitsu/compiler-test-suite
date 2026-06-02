type ty
   class(*),allocatable  :: t
end type

type tty
type(ty),allocatable :: cmp
end type

type(tty) :: obj
call sub(obj)
      select type(pp=>obj%cmp%t)
        type is(integer)
           if(pp .ne. 20) print*,"121"
        class default
         print*,"122"
     end select
print*,"Pass"
contains
   pure subroutine sub(x)
      type(tty),intent(out) :: x
      allocate(x%cmp)
      allocate(integer::x%cmp%t)
      select type(pp=>x%cmp%t)
        type is(integer)
           pp = 20
     end select
   end subroutine
end

