module UpperLowerCase
   implicit none
   integer, parameter :: co=ichar('a')-ichar('A')

contains

function NOP(s)
   character(len=*), intent(in) :: s
   character(len=len(s))        :: NOP
   character                    :: ca(len(s))
   integer :: k

   ca = TRANSFER(s,"x",len(s))

   k = ICHAR(ca(137))
   if (k == 0) k = 32
   ca(137) = CHAR(k)

   NOP = TRANSFER(ca,s)
end function NOP

Function L2Um(cs)
    character(len=*), intent(in) :: cs
    character(len=len(cs))       :: l2um
    character                    :: ca(len(cs))
    ca=transfer(cs,"x",len(cs))
    l2um=transfer(merge(ca,achar(ichar(ca)-co),ca < "a" .or. ca > "z"),cs)
    return
End Function L2Um

Function L2Uw(cs)
    character(len=*), intent(in) :: cs
    character(len=len(cs))       :: l2uw
    character                    :: ca(len(cs))
    ca=transfer(cs,"x",len(cs))
    where (ca >= "a" .and. ca <= "z") ca=achar(ichar(ca)-co)
    l2uw=transfer(ca,cs)
    return
End Function L2Uw

function L2U1(s)
   character(len=*), intent(in) :: s
   character(len=len(s))        :: L2U1

   integer :: i

   do i=1,LEN(s)
      select case (s(i:i))
         case ("a":"z")
            L2U1(i:i) = CHAR(ICHAR(s(i:i))-CO)

         case default
            L2U1(i:i) = s(i:i)
      end select
   end do
end function L2U1

function L2U2(s)
   character(len=*), intent(in) :: s
   character(len=len(s))        :: L2U2

   integer :: i

   L2U2 = s

   do i=1,LEN(s)
      select case (s(i:i))
         case ("a":"z")
            L2U2(i:i) = CHAR(ICHAR(s(i:i))-CO)
      end select
   end do
end function L2U2

end module UpperLowerCase

program main
   use UpperLowerCase
   implicit none

   integer, parameter :: n=10000
   common /text_data/  text, text1
   character(len=256) :: text(n), text1(n)
   real :: r(256)
   integer :: k(256)
   real :: t0, t1, t2, t3, t4, t5, t6, t7
   integer :: i

   call CPU_time(t0)

   do i=1,n
      call random_number(r)
      k = 95 * r
      k = k + 32

      text(i) = TRANSFER(CHAR(k),text(1))
   end do

   call dummy(-137)
   call CPU_time(t1)

   do i=1,n
      text1(i) = text(i)
   end do

   call dummy(137)
   call CPU_time(t2)

   do i=1,n
      text1(i) = NOP(text(i))
   end do

   call dummy(137)
   call CPU_time(t3)

   do i=1,n
      text1(i) = L2Um(text(i))
   end do

   call dummy(137)
   call CPU_time(t4)

   do i=1,n
      text1(i) = L2Uw(text(i))
   end do

   call dummy(137)
   call CPU_time(t5)

   do i=1,n
      text1(i) = L2U1(text(i))
   end do

   call dummy(137)
   call CPU_time(t6)

   do i=1,n
      text1(i) = L2U2(text(i))
   end do

   call dummy(137)
   call CPU_time(t7)

   print *,'pass'
end program main

subroutine dummy(x)
   implicit none
   integer, intent(in) :: x

   integer, parameter :: n=10000
   common /text_data/  text, text1
   character(len=256) :: text(n), text1(n)
   if (x < 0) then
      write(54,"(a)") text(-x)(1:128)
   else
      write(54,"(a)") text1(x)(1:128)
   end if
end subroutine dummy
