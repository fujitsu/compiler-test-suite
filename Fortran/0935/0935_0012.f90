  type ty
  integer :: ii
  end type

  type,extends(ty) :: tty
  integer :: jj
  end type

  class(tty),allocatable :: obj1(:)
  class(ty),allocatable :: obj2(:)

  allocate(tty::obj1(2))
  allocate(ty::obj2(3))
  obj1%ii = 11
  obj1%jj = 12

  obj2 = f(obj1)

  obj1%ii = 21
  obj1%jj = 22

  select type(obj2)
      type is(tty)
        if(sizeof(obj2) .ne. 16) print*,"111", sizeof(obj2)
        if(size(obj2) .ne. 2) print*,"222", size(obj2)
        if(obj2(1)%ii /= 11) print*,"333", obj2(1)%ii
        if(obj2(2)%ii /= 11) print*,"444", obj2(2)%ii
        if(obj2(2)%jj /= 12) print*,"555", obj2(2)%jj
      class default
        print*,"333"
  end select
  print*,"PASS"
  contains
  elemental function f(obj)
   type(tty)::f
   type(tty),intent(in)::obj
   f=obj
  end function
  end
