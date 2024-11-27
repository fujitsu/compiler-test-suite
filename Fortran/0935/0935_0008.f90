  type ty
  integer :: ii
  end type

  type,extends(ty) :: tty
  integer :: jj
  end type
  
  type(tty) :: obj(2)
  obj(1)%ii = 11
  obj(1)%jj = 21
  obj(2)%ii = 12
  obj(2)%jj = 22

  call sub(obj)

  contains
  subroutine sub(obj1)
  class(tty) :: obj1(:)
  class(ty),allocatable :: obj2(:)

  obj2 = f(obj1)

  obj1(1)%ii = 31
  obj1(2)%ii = 32

  select type(obj2)
      type is(tty)
        if(sizeof(obj2) .ne. 16) print*,"111"
        if(size(obj2) .ne. 2) print*,"222"
        if(obj2(1)%ii /= 11) print*,"333"
        if(obj2(2)%ii /= 12) print*,"444"
      class default
        print*,"333"
  end select
  print*,"PASS"
  end

  elemental function f(obj)
   type(tty)::f
   type(tty),intent(in)::obj
   f=obj
  end function
  end
