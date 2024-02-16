#define NI (18)
#define VAR_TYPE      kind=8

#define _CNT_         2
#define LOOP_KERNEL  r(i) = r(i) - 0.38_8 * NVAR/(_CNT_ + NI + i) 
#define PERMISSIBLE_ERROR (1.0E-15)

subroutine EQUAL_CHECK(a, b, is_ok) 
  real(kind=8)::a,b
  logical::is_ok
  if ( a.eq.b ) then
     is_ok = .true.
  else if ( a.eq.0_8 ) then
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
  real(kind=8),dimension(NI)::r
  integer(kind=4)::i
  integer(VAR_TYPE)::NVAR
  do i =1,NI
     LOOP_KERNEL
  end do
end subroutine sub_test

subroutine sub(r,NVAR)
  real(kind=8),dimension(NI)::r
  integer(kind=4)::i
  integer(VAR_TYPE)::NVAR

  do i =1,NI
     LOOP_KERNEL
  end do
end subroutine sub

subroutine sub_init(r) 
  integer(kind=4)::i
  real(kind=8),dimension(NI)::r

  do i =1,NI
     r(i) = real(i)/(NI + 1024.0_8)
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok)
  real(kind=8),dimension(NI)::p,q
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
  real(kind=8),dimension(NI)::r_ans,r
  logical is_ok
  integer(VAR_TYPE)::i,NVAR
  is_ok = .true.

  call sub_init(r_ans)
  call sub_init(r)

  do i=1,NI
     NVAR = _CNT_ - NI/2 + i +1
     call sub(r_ans,NVAR)
     call sub_test(r,NVAR)
     call sub_cmp(r_ans,r,is_ok)
     if (is_ok .eqv. .false.) then
        print *, "NG"
     endif
  end do

  print *, "OK"

end program main
