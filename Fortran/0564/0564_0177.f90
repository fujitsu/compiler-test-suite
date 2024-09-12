    type ty
    integer,allocatable :: ii
    end type

    type, extends(ty)::ts
    end type

    call sub(10)
    contains
    subroutine sub(dmy)
    integer :: dmy

    class(ty),allocatable :: obj1(:)

    allocate(ts::obj1(3))
    allocate(obj1(1)%ii)
    allocate(obj1(2)%ii)
    allocate(obj1(3)%ii)

    obj1(1)%ii = 111
    obj1(2)%ii = 222
    obj1(3)%ii = 333

    obj1 = [ty(dmy),ty(dmy)]

    if(size(obj1) /= 2) print*, 101, size(obj1)
    if(obj1(1)%ii /= 10) print*, 102
    if(obj1(2)%ii /= 10) print*, 103

    select type (obj1)
       type is (ty)
          print*, "PASS"
       class default
          print*,"ERROR"
    end select
    end subroutine
    end

