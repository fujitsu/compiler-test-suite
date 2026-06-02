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
  function einl10(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=8) :: jj
  end function
  function einl11(ii,jj)
    intent(in) :: ii
    intent(in)    :: jj
    character       :: ii
    real   (kind=16):: jj
  end function
end interface
character icall
icall='1'
ic = icall.a.1_1
ic = icall.a.1_2
ic = icall.a.1_4
ic = icall.a.1_8
ic = icall.a..true._1
ic = icall.a..true._2
ic = icall.a..true._4
ic = icall.a..true._8
ic = icall.a.1.0_4
ic = icall.a.1.0_8
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
!$omp parallel 
!$omp end parallel
end function

function einl02(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=2) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl02 = 1
!$omp do
do i=1,10
end do
!$omp end do
end function

function einl03(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=4) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl03 = 1
!$omp sections 
!$omp end sections 
end function

function einl04(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
integer(kind=8) :: jj
if (jj.eq.100) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl04 = 1
!$omp single   
!$omp end single  
end function

function einl05(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=1) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl05 = 1
!$omp master   
!$omp end master  
end function

function einl06(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=2) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl06 = 1
!$omp critical
!$omp end critical
end function

function einl07(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
logical(kind=4) :: jj
if (jj.eqv..false.) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl07 = 1
!$omp ordered
!$omp end ordered
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
!$omp atomic     
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

function einl10(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
real   (kind=8) :: jj
if (jj.eq.20.0) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl10 = 1
!$omp barrier
end function

function einl11(ii,jj)
intent(in) :: ii
intent(in)    :: jj
character       :: ii,iii
real   (kind=16):: jj
common /com/ i
!$omp threadprivate(/com/)
if (jj.eq.20.0) iii='a'
if (ii.eq.'0') iii=iii//'a'
einl11 = 1
end function
