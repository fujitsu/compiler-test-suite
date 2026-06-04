   type ty
    class(*),allocatable :: obj
   end type
    type(ty)::obj
    integer, dimension (10,10) :: f
    integer :: i
    allocate(integer :: obj%obj)

s1: select type(asc=>obj%obj)
    type is(integer)
    asc=4
    forall (i = asc:asc+4) f(2,2) = asc * 100
    if(f(2,2) .ne. 400)print*,"101"
    call sub(obj%obj)
    class default
    print*,"102"
    end select s1

s2: select type(asc=>obj%obj)
    type is(integer)
    asc=4
    forall (i = 1:10) f(asc,asc) = asc * 100
    if(f(asc-2,asc-2) .ne. 400)print*,"101"
    class default
    print*,"102"
    end select s2
    print*,"PASS"
contains
   subroutine sub(x)
    class(*),allocatable::x
    select type(AA=>x)
       type is (integer)
          if(AA.ne.4)print*,"101"
    end select
    end subroutine
end 
