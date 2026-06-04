module m1
type t
 integer,allocatable::i(:)
end type

type,extends(t)::t2
 integer::x=0
end type
type,extends(t2)::t3
 complex::y=0
end type
type,extends(t3)::t4
 complex::z=0
end type
integer::pt2(2)=2
integer::pt3(2)=3
integer::pt4(2)=4
contains
subroutine s1(a,n)

class(t),allocatable     ::a(:)
 
  a(2)%i(2) =5 

  select type(a)
  type is(t2)
    if (a(2)%t%i(2) /= 5) print *,701
    if (a(2)%i(2) /= 5) print *,702
    a(2)%t= t(pt2)
    if (a(2)%t%i(2) /= 2) print *,703
    if (a(2)%i(2) /= 2) print *,704
    if (a(2)%t%i(2) /= a(2)%i(2)) then
      print*,101
    else
      a(2)%t%i(2)=10
    end if
  type is(t3)
    if (a(2)%i(2) /= 5) print *,802
    if (a(2)%t%i(2) /= 5) print *,811
    if (a(2)%t2%t%i(2) /= 5) print *,801
    if (a(2)%t2%i(2) /= 5) print *,8011
    a(2)%t2= t2(pt3)
    if (a(2)%i(2) /= 3) print *,804 
    if (a(2)%t%i(2) /= 3) print *,803
    if (a(2)%t2%i(2) /= 3) print *,806
    if (a(2)%t2%t%i(2) /= 3) print *,805
    if (a(2)%t2%t%i(2) /= a(2)%i(2)) then
       print*,102
    else
       a(2)%t2%i(2)=11
    end if
  type is(t4)
    if (a(2)%i(2) /= 5) print *,802
    if (a(2)%t%i(2) /= 5) print *,811
    if (a(2)%t2%t%i(2) /= 5) print *,801
    if (a(2)%t3%t2%t%i(2) /= 5) print *,8021
    if (a(2)%t3%t2%i(2) /= 5) print *,8021
    if (a(2)%t3%t%i(2) /= 5) print *,8021
    if (a(2)%t3%i(2) /= 5) print *,8021
    if (a(2)%t2%i(2) /= 5) print *,801
    a(2)%t3= t3(pt4)
    if (a(2)%i(2) /= 4) print *,804 
    if (a(2)%t%i(2) /= 4) print *,803
    if (a(2)%t2%i(2) /= 4) print *,806
    if (a(2)%t2%t%i(2) /= 4) print *,805
    if (a(2)%t3%t2%t%i(2) /= 4) print *,8021
    if (a(2)%t3%t2%i(2) /= 4) print *,8021
    if (a(2)%t3%t%i(2) /= 4) print *,8021
    if (a(2)%t3%i(2) /= 4) print *,8021
    if (a(2)%t2%i(2) /= 4) print *,801
    if (a(2)%t3%t2%t%i(2) /= a(2)%i(2)) then
       print*,1025
    else
       a(2)%t2%i(2)=12
    end if
  end select
end
end

subroutine sss
use m1
class(t),allocatable ::a(:)
do n=3,3
  select case (n)
   case(1)
     allocate(      a(2))
   case(2)
     allocate( t2:: a(2))
   case(3)
     allocate( t3:: a(2))
   case(4)
     allocate( t4:: a(2))
  end select
 allocate(a(2)%i(2))

call s1(a,n)
  select case (n)
   case(1)
     if (a(2)%i(2)/= 5) print *,501
   case(2)
     if (a(2)%i(2)/=10) print *,502
   case(3)
     if (a(2)%i(2)/=11) print *,504
   case(4)
     if (a(2)%i(2)/=12) print *,505
  end select
  
  deallocate(a)
end do
end
do n=1,100
call sss
end do
  print*,'sngg579r : pass'
end

