subroutine sub2(r, s, II, JJ, KK)
  implicit none
  real*4 r(32,32,32), s(32,32,32)
  integer II, JJ, KK
  integer i,j,k;

  DO i=1, II
    DO j=1, JJ
      DO k=1, KK
	r(k, j, i) = s(k, j, i) * 3;
	s(k, j, i) = s(k, j, i) - 3;
      END DO
    END DO
  END DO
END

subroutine sub(r, s, II, JJ, KK)
  implicit none
  real*4 r(32,32,32), s(32,32,32)
  integer II, JJ, KK
  integer i,j,k;
  DO i=1, II
    DO j=1, JJ
      DO k=1, KK
	r(k, j, i) = s(k, j, i) * 3;
	s(k, j, i) = s(k, j, i) - 3;
      END DO
    END DO
  END DO
END

subroutine sub_init(r, s)
  implicit none
  real*4 r(32,32,32), s(32,32,32)
  integer i,j,k;
  DO i=1, 32
     DO j=1, 32
        DO k=1, 32
           r(k, j, i) =  i - j * k;
           s(k, j, i) =  i * j - k;
        END DO
     END DO
  END DO
END subroutine sub_init

integer function isub_cmp(p, q, II, JJ, KK)
  implicit none
  real*4 p(32,32,32), q(32,32,32)
  integer II, JJ, KK
  integer i,j,k;
  DO i=1, II
     DO j=1, JJ
        DO k=1, KK
           if (.not.EQUAL_CHECK(p(k,j,i),q(k,j,i))) then
              print *, "NG", p(k,j,i),q(k,j,i)
              isub_cmp = 0
              return
           END if
        END DO
     END DO
  END DO
  isub_cmp = 1
  return
contains
  logical function  EQUAL_CHECK(a, b)
    real a,b
    if (abs(a) .eq.0 .and. b .eq. 0) then
      EQUAL_CHECK = .true.
    else 
      EQUAL_CHECK = ((a==0.0 .and. b <= 1.0E-15) .or. (abs(a - b)/abs(a)) <= 1.0E-15)
    endif
  end function EQUAL_CHECK
end function isub_cmp

program main
  implicit none
  integer i,j,k, isub_cmp
  real*4 r_ans(32,32,32),ss(32,32,32)
  real*4 r(32,32,32),s(32,32,32)

  call sub_init(r_ans,ss);
  call sub(r_ans,ss,26,12,8);

  DO i=1, 26
     DO  j=1, 12
        DO k=1, 8
           call sub_init(r,s);
           call sub2(r,s,i,j,k);
           if (isub_cmp(r_ans,r,i,j,k) == 0) THEN
              print *, "NG"
           END IF
        END DO
     END DO
  END DO
  print *, "PASS"
END program main
