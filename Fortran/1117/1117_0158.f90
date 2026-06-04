interface operator(.a.)
  function einl01(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=1) :: jj
  end function
  function einl02(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=2) :: jj
  end function
  function einl03(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=4) :: jj
  end function
  function einl04(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    integer(kind=8) :: jj
  end function
  function einl05(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=1) :: jj
  end function
  function einl06(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=2) :: jj
  end function
  function einl07(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=4) :: jj
  end function
  function einl08(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    logical(kind=8) :: jj
  end function
  function einl09(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=4) :: jj
  end function
  function inl10(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=8) :: jj
  end function
  function inl11(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=16):: jj
  end function
end interface
character icall
common /com/ iaa
!$omp threadprivate(/com/)
icall='1'
!$omp parallel 
ic = icall.a.1_1
!$omp end parallel
!$omp do
do i=1,10
ic = icall.a.1_2
end do
!$omp end do
!$omp sections 
ic = icall.a.1_4
!$omp end sections 
!$omp single   
ic = icall.a.1_8
!$omp end single  
!$omp master   
ic = icall.a..true._1
!$omp end master  
!$omp parallel sections
ic = icall.a..true._2
!$omp end parallel sections
!$omp critical
ic = icall.a..true._4
!$omp end critical
!$omp ordered
ic = icall.a..true._8
!$omp end ordered
ic=1
!$omp atomic
ic = ic+(icall.a.1.0_4)
ic = icall.a.1.0_8
!$omp barrier
ic = icall.a.1.0_16
ic = ic
print *,'pass'
end

function einl01(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=1) :: jj

if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl01 = 1
end function

function einl02(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=2) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl02 = 1
end function

function einl03(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=4) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl03 = 1
end function

function einl04(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=8) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl04 = 1
end function

function einl05(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=1) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl05 = 1
end function

function einl06(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=2) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl06 = 1
end function

function einl07(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=4) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl07 = 1
end function

function einl08(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=8) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl08 = 1
i=1
i=i+1
end function

function einl09(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
real   (kind=4) :: jj
if (jj.eq.20.0) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl09 = 1
i=1
i=i+1
end function

function inl10(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
real   (kind=8) :: jj
if (jj.eq.20.0) iii='a'
if (ii.eq.'0') iii=iii//'a'
inl10 = 1
end function

function inl11(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
real   (kind=16):: jj
if (jj.eq.20.0) iii='a'
if (ii.eq.'0') iii=iii//'a'
inl11 = 1
end function
