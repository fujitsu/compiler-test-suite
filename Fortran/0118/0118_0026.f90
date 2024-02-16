#define NI (32)
#define NJ (32)
#define NII (26)
#define NJJ (20)
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

subroutine sub_test(r,s,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NI,NJ)::r,s
  
  r(1:II,1:JJ) = s(1:II,1:JJ)
end subroutine sub_test

subroutine sub(r,s,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NI,NI)::r,s
  r(1:II,1:JJ) = s(1:II,1:JJ)
end subroutine sub

subroutine sub_init(r,s) 
  integer(kind=4)::i,j
  real(kind=4),dimension(NI,NJ)::r,s
  do j=1,NJ
     do i =1,NI
        r(i,j) = 0.0
        s(i,j) = real(i+j)/(NI + 1.0)
     end do
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok,II,JJ)
  integer(kind=4)::II,JJ
  real(kind=4),dimension(NI,NJ)::p,q
  logical::is_ok, is_ok_tmp
  is_ok = .true.

  do j =1,JJ
     do i =1,II
        call EQUAL_CHECK(p(i,j),q(i,j), is_ok_tmp)
        if (is_ok_tmp.eqv..false.) then
           is_ok = .false.
        end if
     enddo
  end do
end subroutine sub_cmp

program main
  integer(kind=4)::i,j
  real(kind=4),dimension(NI,NJ)::r_ans,r,s
  logical is_ok
  is_ok = .true.

  call sub_init(r_ans,s)
  call sub(r_ans,s,NII,NJJ)
  j = NJJ
  do i =1,NII
     call sub_init(r,s)
     call sub_test(r,s,i,j)
     call sub_cmp(r_ans,r,is_ok,i,j)
     if (is_ok .eqv. .false.) then
        print *, "NG"
     endif
  end do
  print *, "OK"

end program main
