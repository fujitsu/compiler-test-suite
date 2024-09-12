module mod01
interface
  function dummy01() result(ret)
    integer :: ret
  end function
  function dummy02() result(ret)
    integer :: ret
  end function
end interface
procedure(integer),pointer :: ppp01
integer,external,pointer :: ppp02
end module
module mod02
interface
subroutine dummy03(arg01)
  character(7) :: arg01
end subroutine
subroutine dummy04(arg01)
  character(7) :: arg01
end subroutine
end interface
procedure(),pointer :: ppp01
external :: ppp02
pointer :: ppp02
end module

function dummy01() result(ret)
  integer :: ret
  ret = 100
end function
function dummy02() result(ret)
  integer :: ret
  ret = 200
end function
subroutine dummy03(arg01)
  character(7) :: arg01
  if (arg01 .ne. "dummy03")  print *,'ng19'
end subroutine
subroutine dummy04(arg01) 
  character(7) :: arg01
  if (arg01 .ne. "dummy04")  print *,'ng20'
end subroutine

subroutine sub01()
use mod01

ppp01=>dummy01
ppp02=>dummy01
!$omp task default(firstprivate)
   if ( 100 .ne. ppp01()) print *,'ng1'
   if ( 100 .ne. ppp02()) print *,'ng2'
   ppp01=>dummy02
   ppp02=>dummy02
!$omp task
   if ( 200 .ne. ppp01()) print *,'ng3'
   if ( 200 .ne. ppp02()) print *,'ng4'
!$omp end task
   if ( 200 .ne. ppp01()) print *,'ng5'
   if ( 200 .ne. ppp02()) print *,'ng6'
!$omp end task
if ( 100 .ne. ppp01()) print *,'ng7'
if ( 100 .ne. ppp02()) print *,'ng8'

ppp01=>dummy01
ppp02=>dummy01
!$omp parallel default(firstprivate)
   if ( 100 .ne. ppp01()) print *,'ng9'
   if ( 100 .ne. ppp02()) print *,'ng10'
   ppp01=>dummy02
   ppp02=>dummy02
!$omp task
   if ( 200 .ne. ppp01()) print *,'ng11'
   if ( 200 .ne. ppp02()) print *,'ng12'
!$omp end task
!$omp task
   if ( 200 .ne. ppp01()) print *,'ng13'
   if ( 200 .ne. ppp02()) print *,'ng14'
!$omp end task
   if ( 200 .ne. ppp01()) print *,'ng15'
   if ( 200 .ne. ppp02()) print *,'ng16'
!$omp end parallel
if ( 100 .ne. ppp01()) print *,'ng17'
if ( 100 .ne. ppp02()) print *,'ng18'
end subroutine

subroutine sub02()

use mod02
ppp01=>dummy03
ppp02=>dummy03
!$omp task default(firstprivate)
   call ppp01("dummy03")
   call ppp02("dummy03")
   ppp01=>dummy04
   ppp02=>dummy04
!$omp task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end task
!$omp task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end task
call ppp01("dummy03")
call ppp02("dummy03")

ppp01=>dummy03
ppp02=>dummy03
!$omp parallel default(firstprivate)
   call ppp01("dummy03")
   call ppp02("dummy03")
   ppp01=>dummy04
   ppp02=>dummy04
!$omp task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end task
!$omp task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end task
   call ppp01("dummy04")
   call ppp02("dummy04")
!$omp end parallel
call ppp01("dummy03")
call ppp02("dummy03")
end subroutine
call sub01()
call sub02()
print *,'pass'
end
