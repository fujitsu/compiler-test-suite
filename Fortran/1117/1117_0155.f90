interface assignment(=)
  subroutine einl01(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=1) :: jj
  end subroutine
  subroutine einl02(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=2) :: jj
  end subroutine
  subroutine einl03(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=4) :: jj
  end subroutine
  subroutine einl04(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=8) :: jj
  end subroutine
  subroutine einl05(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=1) :: jj
  end subroutine
  subroutine einl06(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=2) :: jj
  end subroutine
  subroutine einl07(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=4) :: jj
  end subroutine
  subroutine einl08(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=8) :: jj
  end subroutine
  subroutine einl09(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=4) :: jj
  end subroutine
  subroutine einl10(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=8) :: jj
  end subroutine
  subroutine einl11(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=16):: jj
  end subroutine
end interface
character icall
icall='1'
icall = 1_1
icall = 1_2
icall = 1_4
icall = 1_8
icall = .true._1
icall = .true._2
icall = .true._4
icall = .true._8
icall = 1.0_4
icall = 1.0_8
icall = 1.0_16
icall = icall
print *,'pass'
end

subroutine einl01(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=1) :: jj

if (jj.eq.100) ii='a'
!$omp parallel 
!$omp end parallel
end subroutine

subroutine einl02(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=2) :: jj
if (jj.eq.100) ii='a'
!$omp do
do i=1,10
end do
!$omp end do
end subroutine

subroutine einl03(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=4) :: jj
if (jj.eq.100) ii='a'
!$omp sections 
!$omp end sections 
end subroutine

subroutine einl04(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=8) :: jj
if (jj.eq.100) ii='a'
!$omp single   
!$omp end single  
end subroutine

subroutine einl05(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=1) :: jj
if (jj.eqv..false.) ii='a'
!$omp master   
!$omp end master  
end subroutine

subroutine einl06(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=2) :: jj
if (jj.eqv..false.) ii='a'
!$omp critical
!$omp end critical
end subroutine

subroutine einl07(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=4) :: jj
if (jj.eqv..false.) ii='a'
!$omp ordered
!$omp end ordered
end subroutine

subroutine einl08(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=8) :: jj
if (jj.eqv..false.) ii='a'
i=1
!$omp atomic     
i=i+1
end subroutine

subroutine einl09(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=4) :: jj
if (jj.eq.20.0) ii='a'
i=1
i=i+1
end subroutine

subroutine einl10(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=8) :: jj
if (jj.eq.20.0) ii='a'
!$omp barrier
end subroutine

subroutine einl11(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=16):: jj
common /com/ i
!$omp threadprivate(/com/)
if (jj.eq.20.0) ii='a'
end subroutine
