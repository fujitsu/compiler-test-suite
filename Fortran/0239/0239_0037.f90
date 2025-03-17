module m1
  type x1
     integer:: x1v
     contains
     final::x1sp,x1ap
  end type
  type ,extends(x1)::x2
     integer::x2v
     class(x1),allocatable::x2a(:)
     contains
     final::x2sp,x2ap
  end type
  type,extends(x2)::x3
     integer::x3v
     class(x1),allocatable::x3a(:)
     contains
     final::x3sp,x3ap
  end type
  class (x1),allocatable:: a(:)
  integer::f1s=0,f1a=0
  integer::f2s=0,f2a=0
  integer::f3s=0,f3a=0
  contains
  subroutine x1sp(x)
  type(x1)::x
   f1s=f1s+1
  end subroutine
  subroutine x1ap(x)
  type(x1)::x(:)
   f1a=f1a+1
  end subroutine
  subroutine x2sp(x)
  type(x2)::x
   f2s=f2s+1
  end subroutine
  subroutine x2ap(x)
  type(x2)::x(:)
   f2a=f2a+1
  end subroutine
  subroutine x3sp(x)
  type(x3)::x
   f3s=f3s+1
  end subroutine
  subroutine x3ap(x)
  type(x3)::x(:)
   f3a=f3a+1
  end subroutine
end 
subroutine s1(n)
use m1

do kk=1,n
allocate(x2::a(2))
select type(p=>a)
 class is(x2)
   a%x1v=[1,2]
   p%x2v=[11,12]
   allocate(x2::p(1)%x2a(2),stat=kkk)
   if (kkk/=0) print *,2001
   p(1)%x2a%x1v=[21,22]
   select type(t=>p(1)%x2a)
     class is(x2)
       t%x1v=[41,42]
       t%x2v=[51,52]
     class default
       print *,1011
   end select
   allocate(x2::p(2)%x2a(2),stat=kkk)
   if (kkk/=0) print *,2002
   select type(t=>p(2)%x2a)
     class is(x2)
       p(2)%x2a%x1v=[31,32]
       t%x1v=[61,62]
       t%x2v=[71,72]
     class default
       print *,1021
   end select
 class default
   print *,1001
end select

select type (a)
end select

select type(pp=>a)
 class is(x2)
select type(p=>pp)
 class is(x2)
   if (any(a%x1v/=[1,2])) print *,3001
   if (any(p%x2v/=[11,12])) print *,3002
   if (any(pp%x2v/=[11,12])) print *,3005
   if (.not.allocated(p(1)%x2a)) print *,3003
   if (any(p(1)%x2a%x1v/=[41,42])) print *,3004
   select type(t=>p(1)%x2a)
     class is(x2)
   select type(tt=>p(1)%x2a)
     class is(x2)
       if (any(t%x1v/=[41,42])) print *,3006
       if (any(t%x2v/=[51,52])) print *,3007
       if (any(tt%x1v/=[41,42])) print *,3008
       if (any(tt%x2v/=[51,52])) print *,3009
     class default
       print *,3011
   end select
     class default
       print *,4011
   end select
   if (.not.allocated(p(2)%x2a)) print *,5001
   select type(t=>p(2)%x2a)
     class is(x2)
       if (any(p(2)%x2a%x1v/=[61,62])) print *,5002
       if (any(t%x1v/=[61,62])) print *,5003
       if (any(t%x2v/=[71,72])) print *,5004
     class default
       print *,5021
   end select
 class default
   print *,5007
end select
end select

deallocate( a )
if (f1s/=0) print *,19101,f1s
if (f1a/=3) print *,1102,f1a
if (f2s/=0) print *,1111,f2s
if (f2a/=3) print *,18112,f2a
if (f3s/=0) print *,1121,f3s
if (f3a/=0) print *,1122,f3a

allocate(x3::a(2))
select type(p=>a)
 class is(x3)
   a%x1v=[1,2]
   p%x2v=[11,12]
   p%x3v=[111,112]
   allocate(x3::p(1)%x2a(2),stat=kkk)
   if (kkk/=0) print *,12001
   p(1)%x2a%x1v=[21,22]
   select type(t=>p(1)%x2a)
     class is(x3)
       t%x1v=[41,42]
       t%x2v=[51,52]
       t%x3v=[151,152]
     class default
       print *,11011
   end select
   allocate(x3::p(2)%x2a(2),stat=kkk)
   if (kkk/=0) print *,2002
   select type(t=>p(2)%x2a)
     class is(x3)
       p(2)%x2a%x1v=[31,32]
       t%x1v=[61,62]
       t%x2v=[71,72]
       t%x3v=[171,172]
     class default
       print *,1021
   end select
   allocate(x3::p(1)%x3a(2),stat=kkk)
   if (kkk/=0) print *,12001
   select type(t=>p(1)%x3a)
     class is(x3)
       t%x1v=[41,42]
       t%x2v=[51,52]
       t%x3v=[151,152]
     class default
       print *,11011
   end select
 class default
   print *,1001
end select

select type (a)
end select
select type(pp=>a)
 class is(x3)
select type(p=>pp)
 class is(x3)
   if (any(a%x1v/=[1,2])) print *,3001
   if (any(p%x2v/=[11,12])) print *,3002
   if (any(pp%x2v/=[11,12])) print *,3005
   if (.not.allocated(p(1)%x2a)) print *,3003
   if (any(p(1)%x2a%x1v/=[41,42])) print *,3004
   select type(t=>p(1)%x2a)
     class is(x3)
   select type(tt=>p(1)%x2a)
     class is(x3)
       if (any(t%x1v/=[41,42])) print *,3006
       if (any(t%x2v/=[51,52])) print *,3007
       if (any(t%x3v/=[151,152])) print *,13007
       if (any(tt%x1v/=[41,42])) print *,3008
       if (any(tt%x2v/=[51,52])) print *,3009
     class default
       print *,3011
   end select
     class default
       print *,4011
   end select
   if (.not.allocated(p(2)%x2a)) print *,5001
   select type(t=>p(2)%x2a)
     class is(x3)
       if (any(p(2)%x2a%x1v/=[61,62])) print *,5002
       if (any(t%x1v/=[61,62])) print *,5003
       if (any(t%x2v/=[71,72])) print *,5004
       if (any(t%x3v/=[171,172])) print *,15004
     class default
       print *,5021
   end select
   if (.not.allocated(p(1)%x3a)) print *,8001
   if (kkk/=0) print *,42001
   select type(t=>p(1)%x3a)
     class is(x3)
       if (any(t%x1v/=[41,42])) print *,30016
       if (any(t%x2v/=[51,52])) print *,30017
       if (any(t%x3v/=[151,152])) print *,30019
     class default
       print *,18011
   end select
 class default
   print *,5007
end select
end select


end do
deallocate(a)
end
use m1
call s1(1)
if (f1s/=0) print *,9101,f1s
if (f1a/=7) print *,102,f1a
if (f2s/=0) print *,111,f2s
if (f2a/=7) print *,8112,f2a
if (f3s/=0) print *,121,f3s
if (f3a/=4) print *,122,f3a
print *,'pass'
end
