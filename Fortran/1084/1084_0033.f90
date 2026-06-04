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

contains
  subroutine xp(d)
    type(x):: d
    allocate(d%x1)
    d%x1 = 10
    write(8,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d(:)
    d%y1 = 10
    write(8,*) 200
  end subroutine
end

use m1
class(y),allocatable:: v(:)
type(y):: obj

select type(a=>v)
 class default
  print*,911

 type is(y)
  select type(b=>v)
  class default
   print*,912

   type is(y)
    allocate(v(2))
    deallocate(v)
    if(same_type_as(v, obj) .EQV. .FALSE.) print*,"ERROR"
  end select
end select

rewind 8
read(8,*) k; if(k/=200) print *,101
read(8,*) k; if(k/=100) print *,102
read(8,*) k; if(k/=100) print *,103
print *,'PASS'
end
