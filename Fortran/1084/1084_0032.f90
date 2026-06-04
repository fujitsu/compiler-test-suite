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
    write(7,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d
    d%y1 = 20
    write(7,*) 200
  end subroutine

  subroutine zp(d)
    type(z):: d
    d%z1 = 30
    write(7,*) 300
  end subroutine
end

use m1
class(y),allocatable:: v
type(y):: obj

allocate(z::v)

select type(a=>v)
 class default
  print*,911

 type is(z)
  select type(b=>v)
   class default
    print*,912

   type is(z)
    allocate(v%y2%x1)
    deallocate(v)
    if(same_type_as(v, obj) .EQV. .FALSE.) print*,"ERROR"
  end select
end select

rewind 7
read(7,*) k;if(k/=300) print *,202
read(7,*) k;if(k/=200) print *,203
read(7,*) k;if(k/=100) print *,204
print *,'PASS'
end
