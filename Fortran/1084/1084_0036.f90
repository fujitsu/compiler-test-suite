module m1
  type x
     integer,allocatable::x1
     contains
       final:: xp
  end type

  type y
    integer::y1
    type(x)::y2
     contains
       final:: yp
  end type

  type,extends(y)::z
   integer::z1
     contains
       final:: zp
  end type

contains
  subroutine xp(d)
    type(x):: d
    d%x1 = 10
    write(11,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d(:)
    d%y1 = 20
    write(11,*) 200
  end subroutine

  subroutine zp(d)
    type(z):: d(:)
    d%z1 = 30
    write(11,*) 300
  end subroutine

subroutine sub(v)
class(y),pointer:: v(:)

select type(a=>v)
 type is(z)
  select type(b=>v)
   type is(z)
    allocate(v(1)%y2%x1)
    allocate(v(2)%y2%x1)
    deallocate(v)

 class default
  print*,911
  end select

 class default
  print*,912
end select

rewind 11
read(11,*) k;if(k/=300) print *,201
read(11,*) k;if(k/=200) print *,202
read(11,*) k;if(k/=100) print *,203
print *,'PASS'
end subroutine
end module

use m1
class(y),pointer:: v(:)

allocate(z::v(2))

call sub(v)
end
