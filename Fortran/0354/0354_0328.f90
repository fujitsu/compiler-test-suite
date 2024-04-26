#define NI (16)

#define I8_MAX        9223372036854775807
#define I8_MAX_PLUS   9223372036854775808
#define I8_MAX_MINUS  9223372036854775806
#define I8_MIN       -9223372036854775808
#define I8_MIN_PLUS  -9223372036854775807
#define I8_MIN_MINUS -9223372036854775809

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

subroutine sub_test(r,NVAR)
  real(kind=4),dimension(NI)::r
  integer(kind=8)::NVAR
  integer::i,j

  do i =1,NI
     do j=1,NI
        r(i) = r(i) + i * 1.2/NVAR * j
     end do
  end do
end subroutine sub_test

subroutine sub(r,NVAR)
  real(kind=4),dimension(NI)::r
  integer(kind=8)::NVAR
  integer::i,j

  do i =1,NI
     do j=1,NI
        r(i) = r(i) + i * 1.2/NVAR * j
     end do
  end do
end subroutine sub

subroutine sub_init(r) 
  real(kind=4),dimension(NI)::r
  do i =1,NI
     r(i) = real(i)/(NI + 1024.0)
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok)
  real(kind=4),dimension(NI)::p,q
  logical::is_ok,is_ok_tmp
  is_ok = .true.

  do i =1,NI
     call EQUAL_CHECK(p(i),q(i),is_ok_tmp)
     if (is_ok_tmp.eqv..false.) then
        is_ok = .false.
     end if
  end do
end subroutine sub_cmp

program main
  real(kind=4),dimension(NI)::r_ans,r
  logical is_ok
  is_ok = .true.

  call sub_init(r_ans)
  call sub_init(r)
  call sub(r_ans,I8_MAX)
  call sub_test(r,I8_MAX)
  call sub_cmp(r_ans,r,is_ok)

  call sub_init(r_ans)
  call sub_init(r)
  call sub(r_ans,I8_MAX_MINUS)
  call sub_test(r,I8_MAX_MINUS)
  call sub_cmp(r_ans,r,is_ok)

  call sub_init(r_ans)
  call sub_init(r)
  call sub(r_ans,I8_MIN)
  call sub_test(r,I8_MIN)  
  call sub_cmp(r_ans,r,is_ok)

  call sub_init(r_ans)
  call sub_init(r)
  call sub(r_ans,I8_MIN_PLUS)
  call sub_test(r,I8_MIN_PLUS)
  call sub_cmp(r_ans,r,is_ok)

  if (is_ok .eqv. .false.) then
     print *, "NG"
  endif
  print *, "OK"

end program main
