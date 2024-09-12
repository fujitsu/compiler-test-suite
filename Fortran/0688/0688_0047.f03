subroutine sub01(aaa)
character(*) :: aaa
!$omp parallel firstprivate(aaa)
!$omp task
  if ("aaaaa" .ne. aaa) print *,'ng1'
  aaa = "11111"
  if ("11111" .ne. aaa) print *,'ng2'
!$omp end task
!$omp taskwait
  if ("aaaaa" .ne. aaa) print *,'ng3'
!$omp end parallel
end

subroutine sub02(aaa)
character(:),pointer :: aaa
character(3),target :: ttt = "222"
associate(ppp=>"bbbbb")
!$omp parallel default(firstprivate)
!$omp task
  if ("bbbbb" .ne. aaa) print *,'ng4'
  aaa => ttt
  if ("222" .ne. aaa) print *,'ng5'
!$omp end task
!$omp taskwait
  if ("bbbbb" .ne. aaa) print *,'ng6'
!$omp end parallel
end associate
end

subroutine sub03(aaa)
character(:),pointer :: aaa
!$omp parallel default(firstprivate)
!$omp task
  aaa = "33333"
  if ("33333" .ne. aaa) print *,'ng8'
!$omp end task
!$omp taskwait
  if ("33333" .ne. aaa) print *,'ng9',aaa
!$omp end parallel
end

subroutine sub04(aaa)
character(:),pointer :: aaa(:)
character(3),target :: ttt(1) = "444"
!$omp parallel default(firstprivate)
!$omp task
  if (any(aaa/=(/("ddddd",i=1,5)/))) print *,'ng10'
  aaa => ttt
  if (aaa(1) .ne. "444") print *,'ng11'
!$omp end task
!$omp taskwait
  if (any(aaa/=(/("ddddd",i=1,5)/))) print *,'ng12'
!$omp end parallel
end

subroutine sub05(aaa)
character(:),pointer :: aaa(:)
!$omp parallel default(firstprivate)
!$omp task
  aaa = "55555"
  if (any(aaa/=(/("55555",i=1,5)/))) print *,'ng14'
!$omp end task
!$omp taskwait
  if (any(aaa/=(/("55555",i=1,5)/))) print *,'ng15'
!$omp end parallel
end

subroutine sub06(aaa,length)
character(length),pointer :: aaa(:)
character(5),target :: ttt(1) = "66666"
!$omp parallel default(firstprivate)
!$omp task 
  if (any(aaa/=(/("fffff",i=1,5)/))) print *,'ng16'
  aaa => ttt
  if (aaa(1) .ne. "66666") print *,'ng17'
!$omp end task
!$omp taskwait
  if (any(aaa/=(/("fffff",i=1,5)/))) print *,'ng18'
!$omp end parallel
end

subroutine sub07(aaa,len)
character(len),pointer :: aaa(:)
!$omp parallel default(firstprivate)
!$omp task 
  aaa = "77777"
!$omp end task
!$omp taskwait
  if (any(aaa/=(/("77777",i=1,5)/))) print *,'ng20'
!$omp end parallel
end

interface
subroutine sub02(aaa)
character(:),pointer :: aaa
end subroutine
subroutine sub03(aaa)
character(:),pointer :: aaa
end subroutine
subroutine sub04(aaa)
character(:),pointer :: aaa(:)
end subroutine
subroutine sub05(aaa)
character(:),pointer :: aaa(:)
end subroutine
subroutine sub06(aaa,len)
character(len),pointer :: aaa(:)
end subroutine
subroutine sub07(aaa,len)
character(len),pointer :: aaa(:)
end subroutine
end interface

character(5) :: cha01
character(:),pointer :: cha02
character(:),pointer :: cha03
character(:),pointer :: cha04(:)
character(:),pointer :: cha05(:)
character(5),pointer :: cha06(:)
character(len("12345")),pointer :: cha07(:)
cha01 = "aaaaa"
allocate(character(5)::cha02,cha03,cha04(5),cha05(5),cha06(5),cha07(5))
cha02 = "bbbbb"
cha03 = "ccccc"
cha04 = "ddddd"
cha05 = "eeeee"
cha06 = "fffff"
cha07 = "ggggg"
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
call sub04(cha04)
call sub05(cha05)
call sub06(cha06,5)
call sub07(cha07,5)
print *,'pass'
end
