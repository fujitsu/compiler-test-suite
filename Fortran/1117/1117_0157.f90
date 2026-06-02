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
  subroutine inl09(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=4) :: jj
  end subroutine
  subroutine inl10(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=8) :: jj
  end subroutine
  subroutine inl11(ii,jj)
    intent(inout) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=16):: jj
  end subroutine
end interface
common /com/ iaa
!$omp threadprivate(/com/)
character icall
icall='1'
!$omp parallel 
icall = 1_1
!$omp end parallel
!$omp do
do i=1,10
icall = 1_2
end do
!$omp end do
!$omp single   
icall = 1_4
!$omp end single  
!$omp sections 
icall = 1_8
!$omp end sections 
!$omp parallel sections 
icall = .true._1
!$omp end parallel sections 
!$omp master   
icall = .true._2
!$omp end master  
!$omp critical
icall = .true._4
!$omp end critical
!$omp ordered
icall = .true._8
!$omp end ordered
i=1
!$omp atomic     
i = i +1
icall = 1.0_4
icall = 1.0_8
!$omp barrier
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
end subroutine

subroutine einl02(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=2) :: jj
if (jj.eq.100) ii='a'
end subroutine

subroutine einl03(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=4) :: jj
if (jj.eq.100) ii='a'
end subroutine

subroutine einl04(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
integer(kind=8) :: jj
if (jj.eq.100) ii='a'
end subroutine

subroutine einl05(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=1) :: jj
if (jj.eqv..false.) ii='a'
end subroutine

subroutine einl06(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=2) :: jj
if (jj.eqv..false.) ii='a'
end subroutine

subroutine einl07(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=4) :: jj
if (jj.eqv..false.) ii='a'
end subroutine

subroutine einl08(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
logical(kind=8) :: jj
if (jj.eqv..false.) ii='a'
i=1
i=i+1
end subroutine

subroutine inl09(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=4) :: jj
if (jj.eq.20.0) ii='a'
i=1
i=i+1
end subroutine

subroutine inl10(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=8) :: jj
if (jj.eq.20.0) ii='a'
end subroutine

subroutine inl11(ii,jj)
intent(inout) :: ii
intent(in)    :: jj
character       :: ii
real   (kind=16):: jj
if (jj.eq.20.0) ii='a'
end subroutine
