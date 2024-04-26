subroutine s1
integer,parameter::WP=8
complex (KIND=WP), DIMENSION(:,:), ALLOCATABLE ::  AFACT, ACOPY
M=5
N=5
ALLOCATE (AFACT(M,N), ACOPY(M,N))
AFACT=reshape((/(i,i=1,N*M)/),(/M,N/))
ACOPY=AFACT
ACOPY = MATMUL(ACOPY, AFACT)
if (any(abs((/ACOPY/)-(/&
215,230,245,260,275,490,530,570,610,650,765,830,895,960,1025,1040,1130,1220,1310,1400,1315,1430,1545,1660,1775&
/))>0.0001_WP))print *,'error'
end
subroutine s2
integer,parameter::WP=8
complex (KIND=WP), DIMENSION(:,:), ALLOCATABLE ::  AFACT, ACOPY
M=5
N=5
ALLOCATE (AFACT(M,N), ACOPY(M,N))
AFACT=reshape((/(i,i=1,N*M)/),(/M,N/))
ACOPY=AFACT
ACOPY = MATMUL(AFACT,ACOPY)
if (any(abs((/ACOPY/)-(/&
215,230,245,260,275,490,530,570,610,650,765,830,895,960,1025,1040,1130,1220,1310,1400,1315,1430,1545,1660,1775&
/))>0.0001_WP))print *,'error'
end
call s1
call s2
print *,'pass'
end
