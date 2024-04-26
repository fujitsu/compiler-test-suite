program main
call sub_a
call sub_b
end

subroutine sub_a
common/cmn/a,b
real(4),dimension(10) ::a=1.0,b=2.0
end

subroutine sub_b
common /cmn/x
complex(4),dimension(10) ::x
complex(4),dimension(10) :: xx
data xx/5*(1.00000000,1.00000000),5*(2.00000000,2.00000000)/
do i=1,10
  if (abs(x(i)-xx(i))>1.0e-06) print *,"ng x=",x
end do
print *,"*** ok ***"
end
