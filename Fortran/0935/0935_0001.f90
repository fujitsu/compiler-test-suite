  module m1
   type z
     integer:: z1
   end type
   type,extends(z)::y
     integer:: y1
   end type
   type x
    integer:: x1
    class(z),allocatable::x2
   end type

  contains
  function f(d) result(r)
   type(x)::r(2)
   type(x),intent(in)::d(:)
   r=d
  end function
  end

  use m1
  type (x):: a01(2),a02(2)
  allocate(z::a01(1)%x2)
  allocate(z::a01(2)%x2)
  allocate(y::a02(1)%x2)
  allocate(y::a02(2)%x2)
  a01(1)%x1 = 11
  a01(2)%x1 = 12
  a01(1)%x2%z1 = 13
  a01(2)%x2%z1 = 14
  
  a02(1)%x1 = 21
  a02(2)%x1 = 22
  a02(1)%x2%z1 = 23
  a02(2)%x2%z1 = 24
  select type(a=>a02(1)%x2)
  type is(y)
   a%y1 = 25
  class default
   print*,911
  end select

  select type(b=>a02(2)%x2)
  type is(y)
   b%y1 = 26
  class default
   print*,911
  end select

  a01=f(a02)

  a02(1)%x1 = 31
  a02(2)%x1 = 32
  a02(1)%x2%z1 = 33
  a02(2)%x2%z1 = 34
  select type(a=>a02(1)%x2)
  type is(y)
   a%y1 = 35
  class default
   print*,912
  end select

  select type(b=>a02(2)%x2)
  type is(y)
   b%y1 = 36
  class default
   print*,913
  end select

  if(a01(1)%x1 /= 21) print*,101
  if(a01(2)%x1 /= 22) print*,102
  if(a01(1)%x2%z1 /= 23) print*,103
  if(a01(2)%x2%z1 /= 24) print*,104
  select type(a=>a01(1)%x2)
  type is(y)
   if(a%y1 /= 25) print*,105
  class default
   print*,912
  end select

  select type(b=>a01(2)%x2)
  type is(y)
   if(b%y1 /= 26) print*,105
  class default
   print*,912
  end select

  print *,'PASS'
  end
