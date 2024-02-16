#define NI (128)
#define NJ (256)
#define NII (1)
#define NJJ (1)
#define PERMISSIBLE_ERROR (1.0E-7)

subroutine EQUAL_CHECK(a, b, is_ok) 
  real(kind=4)::a,b
  logical::is_ok
  if ( a.eq.b ) then
     is_ok = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. PERMISSIBLE_ERROR) then
        is_ok = .true.
     else
        is_ok = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR ) then
        is_ok = .true.
     else
        is_ok = .false.
     end if
  end if
end subroutine EQUAL_CHECK

subroutine sub_test_omp(r,s,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NJ,NI)::r,s

  do i =1,II
  !$omp parallel
  !$omp do collapse(1)
     do j=1,JJ
        r(j,i) = s(j,i) * i + j + r(j+1,i+1)
     end do
  !$omp end do
  !$omp end parallel
  end do
end subroutine sub_test_omp

subroutine sub_test(r,s,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NJ,NI)::r,s
  do i =1,II
     do j=1,JJ
        r(j,i) = s(j,i) * i + j + r(j+1,i+1)
     end do
  end do
end subroutine sub_test

subroutine sub(r,s,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NJ,NI)::r,s
  do i =1,II
     do j=1,JJ
        r(j,i) = s(j,i) * i + j + r(j+1,i+1)
     end do
  end do
end subroutine sub

subroutine sub_init(r,s) 
  real(kind=4),dimension(NJ,NI)::r,s

  do i =1,NI
     do j=1,NJ
        r(j,i) = i*j - 2.0
        s(j,i) = i + j * 3.0
     end do
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NJ,NI)::p,q
  logical::is_ok,is_ok_tmp
  is_ok = .true.

  do i =1,II
     do j=1,JJ
        call EQUAL_CHECK(p(j,i),q(j,i),is_ok_tmp)
        if (is_ok_tmp.eqv..false.) then
           is_ok = .false.
        end if
     end do
  end do
end subroutine sub_cmp

program main
  integer(kind=4)::i,j
  real(kind=4),dimension(NJ,NI)::r_ans,r,s
  logical is_ok
  is_ok = .true.

  call sub_init(r_ans,s)
  call sub(r_ans,s,NII,NJJ)

  do i =1,NII
     do j=1,NJJ
        call sub_init(r,s)
        call sub_test(r,s,i,j)
        call sub_cmp(r_ans,r,is_ok,i,j)
        if (is_ok .eqv. .false.) then
           print *, "NG"
        endif
     end do
  end do

  do i =1,NII
     do j=1,NJJ
        call sub_init(r,s)
        call sub_test_omp(r,s,i,j)
        call sub_cmp(r_ans,r,is_ok,i,j)
        if (is_ok .eqv. .false.) then
           print *, "NG"
        endif
     end do
  end do

  print *, "OK"

end program main
