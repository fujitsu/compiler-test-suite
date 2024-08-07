#define NI (32)
#define NJ (32)
#define NK (32)
#define NII (26)
#define NJJ (12)
#define NKK (8)
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

subroutine sub_test_omp(r,s,II,JJ,KK)
  integer(kind=4)::II,JJ,KK
  real(kind=4),dimension(NK,NJ,NI)::r,s

  do i =1,II
     do j=1,JJ
      !$omp parallel
      !$omp do collapse(1)
        do k=1,KK
           r(k,j,i) = s(k,j,i) * i + j - k
           s(k,j,i) = s(k,j,i) -  j - k
        end do
     !$omp end do
     !$omp end parallel
     end do
  end do

end subroutine sub_test_omp

subroutine sub_test(r,s,II,JJ,KK)
  integer(kind=4)::II,JJ,KK
  real(kind=4),dimension(NK,NJ,NI)::r,s

  do i =1,II
     do j=1,JJ
        do k=1,KK
           r(k,j,i) = s(k,j,i) * i + j - k
           if ( mod(k,2) .eq. 2) then 
              s(k,j,i) = s(k,j,i) - j - k
           endif

        end do
     end do
  end do
end subroutine sub_test

subroutine sub(r,s,II,JJ,KK)
  integer(kind=4)::II,JJ,KK
  real(kind=4),dimension(NK,NJ,NI)::r,s

  do i =1,II
     do j=1,JJ
        do k=1,KK
           r(k,j,i) = s(k,j,i) * i + j - k
           if ( mod(k,2) .eq. 2) then 
              s(k,j,i) = s(k,j,i) - j - k
           endif

        end do
     end do
  end do
end subroutine sub

subroutine sub_init(r,s) 
  real(kind=4),dimension(NK,NJ,NI)::r,s
  
  do i =1,NI
     do j=1,NJ
        do k=1,NK
           r(k,j,i) = i*j
           s(k,j,i) = i + j
        end do
     end do
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok,II,JJ,KK)
  integer(kind=4)::II,JJ,KK
  real(kind=4),dimension(NK,NJ,NI)::p,q
  logical::is_ok,is_ok_tmp
  is_ok = .true.

  do i =1,II
     do j=1,JJ
        do k=1,KK
           call EQUAL_CHECK(p(k,j,i),q(k,j,i),is_ok_tmp)
           if (is_ok_tmp.eqv..false.) then
              is_ok = .false.
           end if
        end do
     end do
  end do
end subroutine sub_cmp

program main
  integer(kind=4)::i,j,k
  real(kind=4),dimension(NK,NJ,NI)::r_ans,r,s
  logical is_ok
  is_ok = .true.

  call sub_init(r_ans,s)
  call sub(r_ans,s,NII,NJJ,NKK)

  do i =1,NII
     do j=1,NJJ
        do k=1,NKK
           call sub_init(r,s)
           call sub_test(r,s,i,j,k)
           call sub_cmp(r_ans,r,is_ok,i,j,k)
           if (is_ok .eqv. .false.) then
              print *, "NG"
           endif
        end do
     end do
  end do
  
  do i =1,NII
     do j=1,NJJ
        do k=1,NKK
           call sub_init(r,s)
           call sub_test_omp(r,s,i,j,k)
           call sub_cmp(r_ans,r,is_ok,i,j,k)
           if (is_ok .eqv. .false.) then
              print *, "NG"
           endif
        end do
     end do
  end do

  print *, "OK"

end program main
