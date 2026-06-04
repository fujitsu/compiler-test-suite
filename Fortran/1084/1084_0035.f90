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
    write(10,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d(:)
    d%y1 = 20
    write(10,*) 200
  end subroutine

  subroutine zp(d)
    type(z):: d(:)
    d%z1 = 30
    write(10,*) 300
  end subroutine

subroutine sub(v)
class(y),allocatable:: v(:)
type(y)::obj

select type(a=>v)
 class default
  print*,911

 type is(z)
  select type(b=>v)
   class default
    print*,912

   type is(z)
    allocate(v(1)%y2%x1)
    allocate(v(2)%y2%x1)
    deallocate(v)
    if(same_type_as(v, obj) .eqv. .FALSE.) print*,"ERROR"
  end select
end select

rewind 10
read(10,*) k;if(k/=300) print *,201
read(10,*) k;if(k/=200) print *,202
read(10,*) k;if(k/=100) print *,203
print *,'PASS'
end subroutine
end module

use m1
class(y),allocatable:: v(:)

allocate(z::v(2))

call sub(v)
end
