module m1
  type,abstract:: x0
  end type
  type,abstract:: y0
  end type
  type,abstract:: z0
  end type
  type,extends(z0)::z10
     integer,allocatable:: z11
  end type
  type,extends(x0)::x10
     class(y0),allocatable::x11
     !class(y0),allocatable::x12
     class(y0),allocatable::x13
  end type
  type,extends(y0)::y10
     class(z0),allocatable::y11
     !class(z0),allocatable::y12
     class(z0),allocatable::y13
  end type
end
subroutine s1
use m1
class(x0),allocatable::xv0
!class(x0),allocatable::xv00
class(x0),allocatable::xv10
class(y0),allocatable::yv0
class(y10),allocatable::yv10
class(z10),allocatable::zv10
interface
 subroutine gen_allocate(xv0,source)
  use m1
  class(x0),allocatable::xv0
  class(x0),allocatable::source
 end subroutine
end interface
allocate(zv10)
allocate(zv10%z11,source=1)
allocate(yv10)
!allocate(yv10%y12)
allocate(yv10%y13,source=zv10)
allocate(yv0,source=yv10)
allocate(x10::xv10)
select type(xv10)
type is(x10)
 !allocate(xv10%x12)
 allocate(xv10%x13,source=yv0)
end select

!allocate(xv0,source=xv10)
call gen_allocate(xv0,source=xv10)


zv10%z11=-1
k=0
kk=0
kkk=0
kkkk=0
kkkkk=0
select type(xv0)
 type is(x10)
   k=k+1
   select type(p=>xv0%x11)
      class is(y0)
        kk=kk+1
      type is(y10)
        print *,2002
      class default
        print *,2001
   end select
   select type(p=>xv0%x13)
      type is(y10)
        kkk=kkk+1
        select type (pp=>p%y11)
          class is(z0)
            kkkk=kkkk+1
          type is(z10)
             print *,4002
          class default
            print *,4001
        end select
        select type (pp=>p%y13)
          class is(z0)
             print *,5002
          type is(z10)
            kkkkk=kkkkk+1
            if (pp%z11/=1) print *,5003
          class default
            print *,5001
        end select
      class is(y0)
        print *,3001
      class default
        print *,3002
   end select
 class default
   print *,1001
end select
if (k/=1) print *,1002
if (kkk/=1) print *,1003
if (kkkk/=1) print *,1004
if (kkkkk/=1) print *,1005

end
call s1
print *,'sngg292k : pass'
end

 subroutine gen_allocate(xv0,source)
  use m1
  class(x0),allocatable::xv0
  class(x0),allocatable::source
  select type (source)
    type is(x10)
          select type(p3=>source%x13)
            type is(y10)
                !select type(p4=>source%x13%y13)
                select type(p4=>p3%y13)
                  type is(z10)
                     !print *,555
                     allocate(xv0,source=source)
!  print '(z16.16)'.loc(vx0%x13
                  class default !(z0)
                     allocate(xv0,source=source)
                end select
            class default !(y0)
              allocate(xv0,source=source)
          end select
    class default !(x0)
    allocate(xv0,source=source)
  end select
 end subroutine
