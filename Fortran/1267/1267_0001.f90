SUBROUTINE TEST(A,B,C,D,N)
INTEGER(KIND=4),DIMENSION(1:N) :: A,B
INTEGER(KIND=4),DIMENSION(1:N) :: C,D
!OCL SIMD(UNALIGNED)
DO I=1,N
A(C(I)) = B(D(I))
ENDDO
END SUBROUTINE TEST

program main
  integer,parameter::n = 10
  INTEGER(KIND=4),DIMENSION(1:N) :: A,B
  INTEGER(KIND=4),DIMENSION(1:N) :: C,D
  do i=1,n
     a(i) = 0
     c(i) = i
     d(i) = i
     b(i) = 5
  end do
  call test(a,b,c,d,n)
  if (all(a.eq.5)) then
    print *,'PASS'
  else
    print *,a
  endif
end
