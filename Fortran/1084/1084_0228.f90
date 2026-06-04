type ty
   class(*),allocatable  :: t
end type

type tty
type(ty),allocatable :: cmp
end type

type(tty) :: obj
class(*),allocatable  :: t
class(*),allocatable  :: t2(:)
call sub(obj)
call sub2(t)
call sub3(t2)
  select type(pp=>obj%cmp%t)
    type is(integer)
     if(pp.ne.20)print*,"101"
       select type(pp=>t)
        type is(integer)
           if(pp.ne.21)print*,"111"
             select type(pp=>t2(1))
              type is(integer)
                 if(pp.ne.22)print*,"111"
                  select type(pp=>obj%cmp%t)
                   type is(integer)
                      if(pp.ne.20)print*,"191"
                  end select
              type is(real)
                 print*,"201"
              end select
              type is(real)
                 print*,"202"
       end select
    type is(real)
   end select
print*,"PASS"
contains
  subroutine sub(x)
      type(tty),intent(out) :: x
      allocate(x%cmp)
      allocate(integer::x%cmp%t)
      select type(pp=>x%cmp%t)
        type is(integer)
           pp = 20
     end select
   end subroutine
 subroutine sub2(x)
      class(*),allocatable, intent(out) :: x
      allocate(integer::x)
      select type(pp=>x)
        type is(integer)
           pp = 21
     end select
   end subroutine
 subroutine sub3(x)
      class(*),allocatable, intent(out) :: x(:)
      allocate(integer::x(2))
      select type(pp=>x(1))
        type is(integer)
           pp = 22
     end select
   end subroutine
end

