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
    d%x1 = 10
    write(3,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d(:)
    d%y1 = 12
    write(3,*) 200
  end subroutine
end

use m1
type tn
integer::i1
class(y),pointer:: v(:)
end type

type(y)::base

type(tn)::obj(3)

allocate(obj(3)%v(2))

select type(a=>obj(3)%v)
 class default
  print*,"911"

 type is(y)
  select type(b=>obj(3)%v)
   class default
    print*,"912"

   type is(y)
    allocate(obj(3)%v(1)%y2%x1)
    allocate(obj(3)%v(2)%y2%x1)
    deallocate(obj(3)%v)
    if(same_type_as(obj(3)%v, base) .eqv. .FALSE.) print*,"ERROR"
  end select
end select

rewind 3
read(3,*) k; if(k/=200) print *,101
read(3,*) k; if(k/=100) print *,102
read(3,*) k; if(k/=100) print *,103
print *,'PASS'
end
