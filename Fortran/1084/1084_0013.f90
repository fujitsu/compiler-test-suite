module m1
  type x
     integer,allocatable::x1
     contains
       final:: xp
  end type

  type y
    integer::y1
    class(x),allocatable::y2
     contains
       final:: yp
  end type

type tn
class(y),allocatable:: v
end type

type(tn)::obj
type(y)::base

contains
  subroutine xp(d)
    type(x):: d
    d%x1 = 10
    write(1,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d
    d%y1 = 20
    write(1,*) 200
  end subroutine
end

use m1
select type(a=>obj%v)
 class default
  print*,911

 type is(y)
  select type(b=>obj%v)
   class default
    print*,912

   type is(y)
    allocate(obj%v)
    allocate(obj%v%y2)
    allocate(obj%v%y2%x1)
    deallocate(obj%v)
    if(same_type_as(obj%v, base) .eqv. .FALSE.) print*,"ERROR"
  end select
end select

rewind 1
read(1,*) k;if(k/=200) print *,101
read(1,*) k;if(k/=100) print *,102
print *,'PASS'
end
