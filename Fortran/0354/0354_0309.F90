#define NI (2)
#define NJ (2)
#define NK (2)
#define NII (2)
#define NJJ (2)
#define NKK (2)
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

subroutine sub_test(r,s,t,II,JJ,KK,A)
  integer(kind=4)::II,JJ,KK,A,temp
  real(kind=4),dimension(NK,NJ,NI)::r,s
  real(kind=4),dimension(NI)::t
  
  temp = A
  do i =1,II
     t(i) = i + t(i)
     do j=1,JJ
        A = j
        t(j) = j+ t(j)
        do k=1,KK
           r(k,j,i) = s(k,j,i) * i + j - k  + A
        end do
        t(j) = k + t(j)
     end do
  end do
  r(1,1,1) = A
  A = temp

end subroutine sub_test

subroutine sub(r,s,t,II,JJ,KK,A)
  integer(kind=4)::II,JJ,KK,A,temp
  real(kind=4),dimension(NK,NJ,NI)::r,s
  real(kind=4),dimension(NI)::t
  
  temp = A
  do i =1,II
     t(i) = i + t(i)
     do j=1,JJ
        A = j
        t(j) = j+ t(j)
        do k=1,KK
           r(k,j,i) = s(k,j,i) * i + j - k  + A
        end do
        t(j) = k + t(j)
     end do
  end do
  r(1,1,1) = A
  A = temp

end subroutine sub

subroutine sub_init(r,s,t) 
  real(kind=4),dimension(NK,NJ,NI)::r,s
  real(kind=4),dimension(NI)::t  

  do i =1,NI
     t(i) = i
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
  integer(kind=4)::i,j,k,a
  real(kind=4),dimension(NK,NJ,NI)::r_ans,r,s
  real(kind=4),dimension(NI)::t
  logical is_ok
  is_ok = .true.
  a=1
  do i =1,NII
     do j=1,NJJ
        do k=1,NKK
           call sub_init(r_ans,s,t)
           call sub(r_ans,s,t,i,j,k,a)

           call sub_init(r,s,t)
           call sub_test(r,s,t,i,j,k,a)
           call sub_cmp(r_ans,r,is_ok,i,j,k)
           if (is_ok .eqv. .false.) then
              print *, "NG"
           endif
        end do
     end do
  end do

  print *, "OK"

end program main
