module mod
implicit none
 contains
 function usr01(p1,p2) result(ret)
   real :: ret

   integer(kind=1),intent(in) :: p1
   integer,intent(in) :: p2
   ret=p1+p2+100
 end function
 function usr02(p1,p2) result(ret)
   real :: ret

   integer(kind=2),intent(in) :: p1
   integer,intent(in) :: p2
   pointer :: p1
   ret=p1+p2+100
 end function
 function usr03(p1,p2) result(ret)
   real :: ret

   integer(kind=4),intent(in) :: p1
   integer,intent(in) :: p2
   pointer :: p2
   ret=p1+p2+100
 end function
 function usr04(p1,p2) result(ret)
   real :: ret

   integer(kind=8),intent(in) :: p1
   integer,intent(in) :: p2
   pointer :: p1
   pointer :: p2
   ret=p1+p2+100
 end function
end

use mod
implicit none
interface operator(.aaa.)
 module procedure usr01,usr02,usr03,usr04
end interface

  integer :: ans
  integer(kind=1) :: inp01
  integer(kind=2) :: inp02
  integer(kind=4) :: inp04
  integer(kind=8) :: inp08
  integer :: int04
  pointer :: inp01,inp02,inp04,inp08
  allocate(inp01,inp02,inp04,inp08)
  int04=3
  inp01=3
  inp02=3
  inp04=3
  inp08=3

  ans = inp01.aaa.int04
  if (ans == 106) then
    print *,'pass01'
  else
    print *,'ng01'
  end if

  ans = inp02.aaa.int04
  if (ans == 106) then
    print *,'pass02'
  else
    print *,'ng02'
  end if

  ans = int04.aaa.inp04
  if (ans == 106) then
    print *,'pass03'
  else
    print *,'ng03'
  end if

  ans = inp08.aaa.inp04
  if (ans == 106) then
    print *,'pass04'
  else
    print *,'ng04'
  end if
end
