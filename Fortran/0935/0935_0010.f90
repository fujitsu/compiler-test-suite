  type ty
  integer :: ii
  end type

  type,extends(ty) :: tty
  integer :: jj
  end type

  type ts
  class(tty),allocatable :: obj1(:)
  class(ty),allocatable :: obj2(:)
  end type

  type(ts)::obj
  allocate(tty::obj%obj1(2))
  obj%obj1(1)%ii = 11
  obj%obj1(1)%jj = 21
  obj%obj1(2)%ii = 12
  obj%obj1(2)%jj = 22

  obj%obj2 = f(obj%obj1)

  obj%obj1(1)%ii = 31
  obj%obj1(2)%ii = 32

  select type(a=>obj%obj2)
      type is(tty)
        if(sizeof(a) .ne. 16) print*,"111"
        if(size(a) .ne. 2) print*,"222"
        if(a(1)%ii /= 11) print*,"333"
        if(a(2)%ii /= 12) print*,"444"
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
