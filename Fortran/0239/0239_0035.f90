module m1
  type x1
     integer:: x1v
  end type
  type ,extends(x1)::x2
     integer::x2v
     class(x1),allocatable::x2a(:)
  end type
  type,extends(x2)::x3
     integer::x3v
     class(x1),allocatable::x3a(:)
  end type
  class (x1),allocatable:: a(:)
end 
subroutine s1(n)
use m1

do kk=1,n
 k=kk
allocate(x2::a(2))
select type(p=>a)
 class is(x2)
   a%x1v=[1,2]
   p%x2v=[11,12]
   allocate(x2::p(k)%x2a(2),stat=kkk)
   if (kkk/=0) print *,2001
   p(k)%x2a%x1v=[21,22]
   kx=k
   select type(t=>p(kx)%x2a)
     class is(x2)
       kx=99999
       t%x1v=[41,42]
       t%x2v=[51,52]
     class default
       print *,1011
   end select
   kx=k+1
   allocate(x2::p(kx)%x2a(kx),stat=kkk)
   if (kkk/=0) print *,2002
   select type(t=>p(kx)%x2a)
     class is(x2)
       kx=99999
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
   if (.not.allocated(p(k)%x2a)) print *,3003
   if (any(p(k)%x2a%x1v/=[41,42])) print *,3004
   kx=k
   select type(t=>p(kx)%x2a)
     class is(x2)
   select type(tt=>p(kx)%x2a)
     class is(x2)
       kx=9999
       if (any(t%x1v/=[41,42])) print *,3006
       if (any(t%x2v/=[51,52])) print *,3007
       if (any(tt%x1v/=[41,42])) print *,3008
       if (any(tt%x2v/=[51,52])) print *,3009
       if (kx/=9999) print *,3010
     class default
       print *,3011
   end select
     class default
       print *,4011
   end select
   kx=k+1
   if (.not.allocated(p(kx)%x2a)) print *,5001
   select type(t=>p(kx)%x2a)
     class is(x2)
       if (any(p(kx)%x2a%x1v/=[61,62])) print *,5002
       kx=9999
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

allocate(x3::a(k+1))
select type(p=>a)
 class is(x3)
   a%x1v=[1,2]
   p%x2v=[11,12]
   p%x3v=[111,112]
   allocate(x3::p(k)%x2a(k+1),stat=kkk)
   if (kkk/=0) print *,12001
   p(k)%x2a%x1v=[21,22]
   kx=k
   select type(t=>p(kx)%x2a)
     class is(x3)
       kx=99999
       t%x1v=[41,42]
       t%x2v=[51,52]
       t%x3v=[151,152]
       if (kx/=99999)print *,12002
     class default
       print *,11011
   end select
   kx=k+1
   allocate(x3::p(kx)%x2a(kx),stat=kkk)
   if (kkk/=0) print *,2002
   select type(t=>p(kx)%x2a)
     class is(x3)
       kx=99999
       p(2)%x2a%x1v=[31,32]
       t%x1v=[61,62]
       t%x2v=[71,72]
       t%x3v=[171,172]
       if (kx/=99999)print *,12003
     class default
       print *,1021
   end select
   kx=k
   allocate(x3::p(k)%x3a(kx+1),stat=kkk)
   if (kkk/=0) print *,12001
   select type(t=>p(kx)%x3a)
     class is(x3)
       kx=99999
       t%x1v=[41,42]
       t%x2v=[51,52]
       t%x3v=[151,152]
       if (kx/=99999)print *,12004
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
   if (.not.allocated(p(k)%x2a)) print *,3003
   if (any(p(k)%x2a%x1v/=[41,42])) print *,3004
   kx=k
   select type(t=>p(kx)%x2a)
     class is(x3)
   select type(tt=>p(kx)%x2a)
     class is(x3)
       kx=99999
       if (any(t%x1v/=[41,42])) print *,3006
       if (any(t%x2v/=[51,52])) print *,3007
       if (any(t%x3v/=[151,152])) print *,13007
       if (any(tt%x1v/=[41,42])) print *,3008
       if (any(tt%x2v/=[51,52])) print *,3009
       if (kx/=99999)print *,12005
     class default
       print *,3011
   end select
     class default
       print *,4011
   end select
   kx=k+1
   if (.not.allocated(p(kx)%x2a)) print *,5001
   select type(t=>p(kx)%x2a)
     class is(x3)
       if (any(p(kx)%x2a%x1v/=[61,62])) print *,5002
       kx=99999
       if (any(t%x1v/=[61,62])) print *,5003
       if (any(t%x2v/=[71,72])) print *,5004
       if (any(t%x3v/=[171,172])) print *,15004
       if (kx/=99999)print *,12006
     class default
       print *,5021
   end select
   if (.not.allocated(p(k)%x3a)) print *,8001
   if (kkk/=0) print *,42001
   kx=k
   select type(t=>p(kx)%x3a)
     class is(x3)
       kx=99999
       if (any(t%x1v/=[41,42])) print *,30016
       if (any(t%x2v/=[51,52])) print *,30017
       if (any(t%x3v/=[151,152])) print *,30019
       if (kx/=99999)print *,12007
     class default
       print *,18011
   end select
 class default
   print *,5007
end select
end select


end do
end
call s1(1)
print *,'pass'
end
