integer,pointer :: iii1(:)
character(5),pointer :: cha1(:)
integer,pointer :: iii2(:)
character(5),pointer :: cha2(:)

!$omp parallel private(iii1,cha1)
  allocate(iii1(5),cha1(5))
  iii1 = 100
  cha1 = "abcde"
  if ( any(iii1/=(/(100,i=1,5)/))) print *,'ng1'
  if ( any(cha1/=(/('abcde',i=1,5)/))) print *,'ng2'
!$omp parallel private(iii1,cha1)
  allocate(iii1(5),cha1(5))
  iii1 = 200
  cha1 = "ghijk"
  if ( any(iii1/=(/(200,i=1,5)/))) print *,'ng3'
  if ( any(cha1/=(/('ghijk',i=1,5)/))) print *,'ng4'
!$omp task private(iii1,cha1)
  allocate(iii1(5),cha1(5))
  iii1 = 300
  cha1 = "lmnop"
  if ( any(iii1/=(/(300,i=1,5)/))) print *,'ng5'
  if ( any(cha1/=(/('lmnop',i=1,5)/))) print *,'ng6'
!$omp end task
!$omp end parallel
!$omp end parallel

allocate(iii2(5),cha2(5))
iii2 = 100
cha2 = "abcde"

!$omp parallel default(firstprivate)
  if ( any(iii2/=(/(100,i=1,5)/))) print *,'ng7'
  if ( any(cha2/=(/('abcde',i=1,5)/))) print *,'ng8'
!$omp parallel default(firstprivate)
  if ( any(iii2/=(/(100,i=1,5)/))) print *,'ng9'
  if ( any(cha2/=(/('abcde',i=1,5)/))) print *,'ng10'
!$omp task 
  if ( any(iii2/=(/(100,i=1,5)/))) print *,'ng11'
  if ( any(cha2/=(/('abcde',i=1,5)/))) print *,'ng14'
!$omp end task
!$omp end parallel
!$omp end parallel
print *,'ok'
end
