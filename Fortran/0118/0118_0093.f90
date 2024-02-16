#define NJ (32)
#define NK (32)
#define NA (32)
#define NJJ (2)
#define NKK (2)
#define NAA (2)
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

subroutine sub_test(r,s,t,JJ,KK,A)
  integer(kind=4)::JJ,KK,A,temp
  real(kind=4),dimension(NK,NJ)::r,s
  real(kind=4),dimension(NJ)::t
  
  temp = A
  do j=1,JJ
     A = j
     t(j) = j+ t(j)
     do k=1,KK
        r(k,j) = s(k,j) *  j - k  + A
     end do
     t(j) = k + t(j)
  end do
  r(1,1) = A
  A = temp

end subroutine sub_test

subroutine sub(r,s,t,JJ,KK,A)
  integer(kind=4)::JJ,KK,A,temp
  real(kind=4),dimension(NK,NJ)::r,s
  real(kind=4),dimension(NJ)::t
  
  temp = A
  do j=1,JJ
     A = j
     t(j) = j+ t(j)
     do k=1,KK
        r(k,j) = s(k,j) *  j - k  + A
     end do
     t(j) = k + t(j)
  end do
  r(1,1) = A
  A = temp

end subroutine sub

subroutine sub_init(r,s,t) 
  real(kind=4),dimension(NK,NJ)::r,s
  real(kind=4),dimension(NJ)::t  
  
  do j=1,NJ
     t(j) = j
     do k=1,NK
        r(k,j) = k*j
        s(k,j) = k + j
     end do
  end do
end subroutine sub_init

subroutine sub_cmp(p,q,is_ok,JJ,KK)
  integer(kind=4)::JJ,KK
  real(kind=4),dimension(NK,NJ)::p,q
  logical::is_ok,is_ok_tmp
  is_ok = .true.

  do j=1,JJ
     do k=1,KK
        call EQUAL_CHECK(p(k,j),q(k,j),is_ok_tmp)
        if (is_ok_tmp.eqv..false.) then
           is_ok = .false.
        end if
     end do
  end do
end subroutine sub_cmp

program main
  integer(kind=4)::j,k,a
  real(kind=4),dimension(NK,NJ)::r_ans,r,s
  real(kind=4),dimension(NJ)::t
  logical is_ok
  is_ok = .true.
  a=1
  do j=1,NJJ
     do k=1,NKK
        call sub_init(r_ans,s,t)
        call sub(r_ans,s,t,j,k,a)

        call sub_init(r,s,t)
        call sub_test(r,s,t,j,k,a)
        call sub_cmp(r_ans,r,is_ok,j,k)
        if (is_ok .eqv. .false.) then
           print *, "NG"
        endif
     end do
  end do

  print *, "OK"

end program main
