 module m1
 type x1
   integer:: xx1
 end type

 type x2
   integer:: xx2
   type(x1), allocatable::obj(:,:)
 end type

 type, extends(x2) :: x3
  integer :: xx3
 end type

 contains
 subroutine s1(x)
 class(x2),value:: x

 select type(x)
  type is(x2)
   if (size(x%obj) /= 6) print*,201
   if (x%xx2 /= 11) print *,202
   if (all(x%obj%xx1 /= 12)) print *,203

   x%xx2 = 11
   x%obj%xx1 = 12

  type is(x3)
   if (x%xx2 /= 13) print *,301
   if (all(x%obj%xx1 /= 14)) print *,302
   if (x%xx3 /= 15) print *,303
   if (size(x%obj) /= 20) print*,304

   x%xx2 = 13
   x%obj%xx1 = 14
   x%xx3 = 15

 class default
  print*, 911
 end select
 end subroutine
 end

 use m1
 type(x2),allocatable :: a
 type(x3),allocatable :: b

 allocate(a)
 allocate(a%obj(2,3))

 allocate(b)
 allocate(b%obj(4,5))
    
 a%xx2 = 11
 a%obj%xx1 = 12

 b%xx2 = 13
 b%obj%xx1 = 14
 b%xx3 = 15

 call s1(a)
 if (a%xx2 /= 11) print *,101
 if (all(a%obj%xx1 /= 12)) print *,102

 call s1(b)
 if (b%xx2 /= 13) print *,201
 if (all(b%obj%xx1 /= 14)) print *,202
 if (b%xx3 /= 15) print *,203

 print *,'PASS'
 end
