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

type tn
integer::i1
class(*),pointer:: v(:)
end type

contains
  subroutine xp(d)
    type(x):: d
    write(4,*) 100
  end subroutine

  subroutine yp(d)
    type(y):: d(:)
    d%y1 = 20
    write(4,*) 200
  end subroutine

subroutine sub(obj)
type(tn):: obj(:)
type(y)::base

select type(a=>obj(2)%v)
 class default
  print*,911

 type is(y)
  select type(b=>obj(2)%v)
   class default
    print*,912

   type is(y)
    allocate(b(1)%y2%x1)
    allocate(b(2)%y2%x1)
    deallocate(obj(2)%v)
    if(same_type_as(obj(2)%v, base)) print*,"ERROR"
  end select
end select

rewind 4
read(4,*) k;if(k/=200) print *,101
read(4,*) k;if(k/=100) print *,102
read(4,*) k;if(k/=100) print *,103
print *,'PASS'
end subroutine
end module

use m1
type(tn)::obj(3)

allocate(y::obj(2)%v(2))

call sub(obj)
end
