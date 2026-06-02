implicit none
associate( k=> 2)
 block
  character::arr(2)*(2)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
!print '(z16.16)',loc(arr(1))
!print '(z16.16)',loc(arr(2))
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
 end block
end associate
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub7()
call sub8()
call sub9()
call sub10()
call sub11()
call sub12()
call sub13()
print *,'snfm0017 : pass'
end

subroutine sub1()
implicit none
save
associate( k=> 3)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub2()
implicit none
integer :: n =3
associate( k=> n)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub3()
implicit none
integer :: n(1) =3
associate( k=> n(1))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub4()
implicit none
type ty1
 integer :: rr
end type
type(ty1) :: n=ty1(1)
associate( k=> n%rr)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub5()
implicit none
integer :: n(1) =3
associate( k=> n)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub7()
implicit none
integer,parameter :: n =3
associate( k=> n)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub8()
implicit none
integer,parameter :: n(1) =3
associate( k=> n(1))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub9()
implicit none
type ty1
 integer :: rr
end type
type(ty1),parameter :: n=ty1(1)
associate( k=> n%rr)
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub10()
implicit none
associate( k=> int(3))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub11()
implicit none
associate( k=> ifunc(3))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
contains
function ifunc(i)
integer :: ifunc,i
ifunc=i
end
end
subroutine sub12()
implicit none
associate( k=> (/3/))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
subroutine sub13()
implicit none
type ty1
 integer :: rr
end type
associate( k=> ty1(1))
 block
  character::arr(3)*(3)
  arr(1)(1:1)='1'
  arr(1)(2:2)='2'
  arr(1)(3:3)='3'
   write(16,*) arr(1)(2:2)
  if (arr(1)(1:1)/='1') print *,700,arr(1)(1:1)
  if (arr(1)(2:2)/='2') print *,800,arr(1)(2:2)
  if (arr(1)(3:3)/='3') print *,900,arr(1)(3:3)
 end block
end associate
end
