module m1
 type x
   integer,allocatable:: x(:)
 end type

 type x1
   integer,allocatable:: xx1
 end type

 type,extends(x1):: x2
   integer:: xx2
   type(x),allocatable::xx(:)
 end type

 contains
 subroutine s1(dmy)
 class(x1),value:: dmy

 select type(dmy)
  type is(x2)
   if (size(dmy%xx) /= 3) print*, 201
   if (size(dmy%xx(2)%x) /= 2) print*, 202
   if (size(dmy%xx(3)%x) /= 5) print*, 203
   if (all(dmy%xx(2)%x /= 11)) print *, 204
   if (all(dmy%xx(3)%x /= 12)) print *, 205
   if (dmy%xx1 /= 13) print *, 206
   if (dmy%xx2 /= 14) print *, 207
   
   dmy%xx(2)%x = 21
   dmy%xx(3)%x = 22
   dmy%xx1     = 23
   dmy%xx2     = 24

  class default
   print*, 911
 end select
 end subroutine
end

 use m1
 type(x2),allocatable::obj

 allocate(obj)
 allocate(obj%xx1)
 allocate(obj%xx(3))
 allocate(obj%xx(2)%x(2))
 allocate(obj%xx(3)%x(5))

 obj%xx(2)%x = 11
 obj%xx(3)%x = 12
 obj%xx1     = 13
 obj%xx2     = 14

 call s1(obj)
 if (all(obj%xx(2)%x /= 11)) print *,101
 if (all(obj%xx(3)%x /= 12)) print *,102
 if (obj%xx1 /= 13) print *, 103
 if (obj%xx2 /= 14) print *, 104

 print *,'PASS'
 end


