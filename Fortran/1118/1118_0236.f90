integer,save,pointer :: iii => null()
integer,save,pointer :: jjj => null()
integer,target :: ttt1 = 100
integer,target :: ttt2 = 200
!$omp threadprivate(iii,jjj)
iii=>ttt1
jjj=>ttt1

!$omp task
  if ( iii .ne. 100 ) print *,'ng1'
  if ( jjj .ne. 100 ) print *,'ng2'
!$omp task
  if ( iii .ne. 100 ) print *,'ng3'
  if ( jjj .ne. 100 ) print *,'ng4'
!$omp end task
  if ( iii .ne. 100 ) print *,'ng5'
  if ( jjj .ne. 100 ) print *,'ng6'
!$omp end task

if ( iii .ne. 100 ) print *,'ng7'
if ( jjj .ne. 100 ) print *,'ng8'

iii=>ttt2
jjj=>ttt2
!$omp parallel shared(ttt1,ttt2) copyin(iii,jjj)
!$omp task default(private) shared(ttt1,ttt2)
  if ( iii .ne. 200 ) print *,'ng9',iii
  if ( jjj .ne. 200 ) print *,'ng10',jjj
!$omp task default(private) shared(ttt1,ttt2)
  if ( iii .ne. 200 ) print *,'ng11',iii
  if ( jjj .ne. 200 ) print *,'ng12',jjj
!$omp end task
!$omp taskwait
  if ( iii .ne. 200 ) print *,'ng13',iii
  if ( jjj .ne. 200 ) print *,'ng14',jjj
!$omp end task
!$omp taskwait
!$omp end parallel

if ( iii .ne. 200 ) print *,'ng15',iii
if ( jjj .ne. 200 ) print *,'ng16',jjj

print *,'ok'
end
