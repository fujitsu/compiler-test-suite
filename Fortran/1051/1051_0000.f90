SUBROUTINE SUB(N, M, A, B, Y, Z)
  INTEGER N, M
  REAL A(*), B(*), Y(*), Z(*)
  INTEGER I
  !$OMP PARALLEL
  !$OMP DO
  DO I=2,N
     B(I) = (A(I) + A(I-1)) / 2.0
  ENDDO
  !$OMP END DO NOWAIT
  !$OMP DO
  DO I=1,M
     Y(I) = SQRT(Z(I))
  ENDDO
  !$OMP END DO NOWAIT
  !$OMP END PARALLEL
END SUBROUTINE SUB

real a(100),b(100),y(100),z(100),bs(100),ys(100)
integer :: i,err
do i=1,100
  a(i) = 0.1 * i;
  z(i) = 0.2 * i;
enddo
call SUB(100,100,a,b,y,z)

do i=2,100
  bs(i) = (a(i) + a(i-1)) / 2.0
enddo
do i=1,100
  ys(i) = sqrt(z(i))
enddo

err=0
do i=2,100
  if (abs(b(i)-bs(i)) .gt. 0.000001) err=err+1
end do
do i=1,100
  if (abs(y(i)-ys(i)) .gt. 0.000001) err=err+1
end do
if (err.eq.0) then
  print *,"pass"
else
  print *,"NG"
endif
end
