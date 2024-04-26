subroutine vgather_type(a,u,i)
complex(8) :: a
integer(8) :: u
integer(4) :: i

u = i
a = real(u,kind=8)
end subroutine

subroutine vscather_type(a,u,i)
complex(8) :: a
integer(8) :: u
integer(4) :: i

a = real(i,kind=8)
u = int(a,kind=8)
end subroutine

program main
complex(8) :: a
integer(8) :: u
a = cmplx(0.0,1.0)
u = 1
call vgather_type(a,u,1)
if (int(imag(a),kind=4) .eq. 0) then
  print *,"ok"
else
  print *,"ng", int(imag(a),kind=4)
endif

a = cmplx(0.0,1.0)
u = 1
call vscather_type(a,u,1)
if (u .eq. 1) then
  print *,"ok"
else
  print *,"ng", u
endif
end program
