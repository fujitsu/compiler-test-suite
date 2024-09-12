 module m1
 contains
 subroutine s(dmy)
 class(*), VALUE :: dmy(:,:)

 select type (dmy)
  type is(integer(kind=8))
   if (SIZE(dmy) /= 4) print *,201
   if (KIND(dmy(1,2)) /= 8) print *,202
   if (dmy(2,1) /= 6) print *,203
   dmy = 3

  type is(real(kind=8))
   if (SIZE(dmy) /= 9) print *,301
   if (dmy(1,2) /= 5.5) print *,302
   dmy = 8.8

  class default
  print*, 911
 end select
 end subroutine
 end

 program main
 use m1
 integer(kind=8),allocatable :: a(:,:)
 real(kind=8) :: b(3,3)

 allocate(a(2,2))

 a = 6
 b = 5.5

 call s(a)
 if (all(a /= 6)) print *,101

 call s(b)
 if (all(.not.(b >= 5.4 .and. b <= 5.6 ))) print *,102
 print*, "PASS"
 end
