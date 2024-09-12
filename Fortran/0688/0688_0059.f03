call ss1
print *,'pass'
end
subroutine ss1
character(:),pointer :: cha1=>null()
character(:),pointer :: cha2=>null()
character(:),pointer :: cha3=>null()
character(:),pointer :: cha4=>null()
character(5),target :: ttt1 = "A1234"
character(5),target :: ttt2 = "AA234"

allocate(character(5)::cha2)
!$omp parallel do firstprivate(cha1,cha2) lastprivate(cha1,cha2)
do j=1,1
  allocate(character(5)::cha1)
  cha1 = "abcde"
  cha2(1:5) = "fghij"
  if ( cha1 .ne. 'abcde' ) print *,'ng1'
  if ( cha2 .ne. 'fghij' ) print *,'ng2'
!$omp parallel do  firstprivate(cha1,cha2) lastprivate(cha1,cha2)
do k=1,1
  allocate(character(5)::cha1)
  cha1 = "ghijk"
  cha2(1:5) = "lmnop"
  if ( cha1 .ne. 'ghijk' ) print *,'ng3'
  if ( cha2 .ne. 'lmnop' ) print *,'ng4'
!$omp parallel do  firstprivate(cha1,cha2) lastprivate(cha1,cha2)
do l=1,1
  allocate(character(5)::cha1)
  cha1 = "lmnop"
  cha2(1:5) = "qrstu"
  if ( cha1 .ne. 'lmnop' ) print *,'ng5'
  if ( cha2 .ne. 'qrstu' ) print *,'ng6'
end do
!$omp end parallel do
end do
!$omp end parallel do
end do
!$omp end parallel do
allocate(character(5)::cha3,cha4)
cha3 = "abcde"
cha4(1:5) = "fghij"
!$omp parallel do  firstprivate(cha3,cha4) lastprivate(cha3,cha4) 
do i=1,1
  if ( cha3 .ne. 'abcde' ) print *,'ng7'
  cha3 => ttt1
  cha4(1:5) = "B1234"
!$omp parallel do firstprivate(cha3,cha4) lastprivate(cha3,cha4)
do j=1,1
  if ( cha3 .ne. 'A1234' ) print *,'ng9'
  if ( cha4 .ne. 'B1234' ) print *,'ng10'
  cha3 => ttt2
  cha4(1:5) = "BB234"
!$omp parallel do firstprivate(cha3,cha4) lastprivate(cha3,cha4)
do k=1,1
  if ( cha3 .ne. 'AA234' ) print *,'ng11'
  if ( cha4 .ne. 'BB234' ) print *,'ng12'
end do
!$omp end parallel do
end do
!$omp end parallel do
end do
!$omp end parallel do
end
