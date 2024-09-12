module m1
  type w1
    integer::y1
     contains
      final::q1
  end type
   type,extends(w1)::w2
      class(w1),allocatable::wy2(:)
      contains
        final::q2
   end type
  type x1
     class(w1),allocatable::y1(:)
     contains
      final::f1
  end type
   type,extends(x1)::x2
      class(w1),allocatable::y2(:)
      contains
        final::f2
   end type
  type z1
     class(x1),allocatable::y3(:)
     contains
       final::f3
  end type
  integer::ff1=0,ff2=0,ff3=0
  integer::qq1=0,qq2=0
  contains
  subroutine q1(x)
   type(w1)::x(:)
   qq1=qq1+1
  end  subroutine
  subroutine q2(x)
   type(w2)::x(:)
   qq2=qq2+1
  end  subroutine
  subroutine f1(x)
   type(x1)::x(:)
   ff1=ff1+1
  end  subroutine
  subroutine f2(x)
   type(x2)::x(:)
   ff2=ff2+1
  end  subroutine
  subroutine f3(x)
   type(z1)::x(:)
   ff3=ff3+1
  end  subroutine
end
subroutine s1
use m1
 type (z1),allocatable:: v1(:)
 allocate(v1(2))
 allocate(x2::v1(2)%y3(2))
k=0;k2=0
select type(p=>v1(2)%y3)
 type is(x2)
   k=1
   allocate(w2::p(2)%y2(2))
   select type(pp=>p(2)%y2)
     type is(w2)
       k2=1
       allocate(w2::pp(2)%wy2(2))
   end select
end select
if (k/=1) print *,101
if (k2/=1) print *,102
end
use m1
call s1
if (ff1/=0) print *,101
if (ff2/=1) print *,102
if (ff3/=1) print *,103
if (qq1/=0) print *,104
if (qq2/=0) print *,105
print *,'pass'
end
   
