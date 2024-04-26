#define PERMISSIBLE_ERROR (1.0E-15)

subroutine EQUAL_CHECK(a, b, is_ok) 
  real(kind=8)::a,b
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

subroutine sub_test(a,b,c,d)
  real(kind=8),dimension(1:1024)::a,b,c,d
  integer(kind=4)::i
  do i=1, 1024
     a(i) = a(i) + b(i)
     c(i) = c(i) + d(i)
  end do
end subroutine sub_test

subroutine sub_ans(a,b,c,d)
  real(kind=8),dimension(1:1024)::a,b,c,d
  integer(kind=4)::i
  do i=1, 1024
     a(i) = a(i) + b(i)
     c(i) = c(i) + d(i)
  end do
end subroutine sub_ans

subroutine sub_init(a,b,c,d)
  real(kind=8),dimension(1:1024)::a,b,c,d
  integer(kind=4)::i
  do i=1, 1024
     a(i) = sin(i*1.0)
     b(i) = exp(-i*0.001)
     c(i) = cos(i*1.1)
     d(i) = i**2 - 0.76543
  end do
end subroutine sub_init

subroutine check_res(a,b,c,d,ans_a,ans_b,ans_c,ans_d)
  real(kind=8),dimension(1:1024)::a, b, c, d
  real(kind=8),dimension(1:1024)::ans_a, ans_b, ans_c, ans_d
  logical::is_ok
  logical::is_ok_a, is_ok_b, is_ok_c, is_ok_d

  is_ok = .true.
  do i=1, 1024
     call EQUAL_CHECK(a(i), ans_a(i), is_ok_a)
     call EQUAL_CHECK(b(i), ans_b(i), is_ok_b)
     call EQUAL_CHECK(c(i), ans_c(i), is_ok_c)
     call EQUAL_CHECK(d(i), ans_d(i), is_ok_d)
     if ((is_ok_a .and. is_ok_b .and. &
          is_ok_c .and. is_ok_d).eqv. .false.) then
        is_ok = .false.
        exit
     endif
  end do

  if ( is_ok .eqv. .true. ) then
     print *, "OK"
  else
     print *, "NG"
  end if
end subroutine check_res

program main
  real(kind=8),dimension(1:1024)::a, b, c, d
  real(kind=8),dimension(1:1024)::ans_a, ans_b, ans_c, ans_d
  call sub_init(a, b, c, d)
  call sub_init(ans_a, ans_b, ans_c, ans_d)

  call sub_test(a, b, c, d)
  call sub_ans(ans_a, ans_b, ans_c, ans_d)
  call check_res(a, b, c, d, ans_a, ans_b, ans_c, ans_d)

end program main
