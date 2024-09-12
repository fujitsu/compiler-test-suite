function dummy01() result(ret)
  integer :: ret
  ret = 100
end function
function dummy02() result(ret)
  integer :: ret
  ret = 200
end function
interface
  function dummy01() result(ret)
    integer :: ret
  end function
  function dummy02() result(ret)
    integer :: ret
  end function
end interface
procedure(integer) :: ppp01
integer,external :: ppp02
pointer :: ppp01,ppp02

ppp01=>dummy01
ppp02=>dummy01
!$omp task
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
   if ( 200 .ne. ppp01()) print *,'ng13'
   if ( 200 .ne. ppp02()) print *,'ng14'
!$omp end parallel
if ( 100 .ne. ppp01()) print *,'ng13'
if ( 100 .ne. ppp02()) print *,'ng14'
print *,'pass'
end
