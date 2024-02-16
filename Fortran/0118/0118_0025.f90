#define NI (32)
#define NII (26)
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

subroutine sub_test(r,s,II)
  integer(kind=4)::II
  real(kind=4),dimension(NI)::r,s
  
  r(1:II) = s(1:II)
end subroutine sub_test

subroutine sub(r,s,II)
  integer(kind=4)::II
  real(kind=4),dimension(NI)::r,s
  r(1:II) = s(1:II)
end subroutine sub

subroutine sub_init(r,s) 
  real(kind=4),dimension(NI)::r,s
  do i =1,NI
     r(i) = 0.0
     s(i) = real(i)/(NI + 1.0)
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok,II)
  integer(kind=4)::II
  real(kind=4),dimension(NI)::p,q
  logical::is_ok, is_ok_tmp
  is_ok = .true.

  do i =1,II
     call EQUAL_CHECK(p(i),q(i),is_ok_tmp)
     if (is_ok_tmp.eqv..false.) then
        is_ok = .false.
     end if
  end do
end subroutine sub_cmp

program main
  integer(kind=4)::i
  real(kind=4),dimension(NI)::r_ans,r,s
  logical is_ok
  is_ok = .true.

  call sub_init(r_ans,s)
  call sub(r_ans,s,NII)

  do i =1,NII
     call sub_init(r,s)
     call sub_test(r,s,i)
     call sub_cmp(r_ans,r,is_ok,i)
     if (is_ok .eqv. .false.) then
        print *, "NG"
     endif
  end do
  print *, "OK"

end program main
