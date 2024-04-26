subroutine i8_to_c16(a,u,n)
complex(8),dimension(1:n) :: a
integer(8),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=8)
enddo
end subroutine

subroutine i4_to_c16(a,u,n)
complex(8),dimension(1:n) :: a
integer(4),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=8)
enddo
end subroutine

subroutine i2_to_c16(a,u,n)
complex(8),dimension(1:n) :: a
integer(2),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=8)
enddo
end subroutine

subroutine i1_to_c16(a,u,n)
complex(8),dimension(1:n) :: a
integer(1),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=8)
enddo
end subroutine

subroutine c16_to_i8(a,u,n)
complex(8),dimension(1:n) :: a
integer(8),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=8)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c16_to_i4(a,u,n)
complex(8),dimension(1:n) :: a
integer(4),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=8)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c16_to_i2(a,u,n)
complex(8),dimension(1:n) :: a
integer(2),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=8)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c16_to_i1(a,u,n)
complex(8),dimension(1:n) :: a
integer(1),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=8)
  u(i) = int(a(i),kind=8)/3
enddo
end subroutine

subroutine i8_to_c8(a,u,n)
complex(4),dimension(1:n) :: a
integer(8),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=4)
enddo
end subroutine

subroutine i4_to_c8(a,u,n)
complex(4),dimension(1:n) :: a
integer(4),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=4)
enddo
end subroutine

subroutine i2_to_c8(a,u,n)
complex(4),dimension(1:n) :: a
integer(2),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=4)
enddo
end subroutine

subroutine i1_to_c8(a,u,n)
complex(4),dimension(1:n) :: a
integer(1),dimension(1:n) :: u

do i=1,n
  u(i) = i
  a(i) = real(u(i),kind=4)
enddo
end subroutine

subroutine c8_to_i8(a,u,n)
complex(4),dimension(1:n) :: a
integer(8),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=4)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c8_to_i4(a,u,n)
complex(4),dimension(1:n) :: a
integer(4),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=4)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c8_to_i2(a,u,n)
complex(4),dimension(1:n) :: a
integer(2),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=4)
  u(i) = int(a(i),kind=8)
enddo
end subroutine

subroutine c8_to_i1(a,u,n)
complex(4),dimension(1:n) :: a
integer(1),dimension(1:n) :: u

do i=1,n
  a(i) = real(i,kind=4)
  u(i) = int(a(i),kind=8)/3
enddo
end subroutine

program main
integer,parameter :: n=100
complex(8),dimension(1:n) :: a8
complex(4),dimension(1:n) :: a4
integer(8),dimension(1:n) :: u8
integer(4),dimension(1:n) :: u4
integer(2),dimension(1:n) :: u2
integer(1),dimension(1:n) :: u1

print *,"***** i?_to_c16"
a8 = 0.0
u8 = 0
call i8_to_c16(a8,u8,n)
if (int(sum(a8)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a8))
endif

a8 = 0.0
u4 = 0
call i4_to_c16(a8,u4,n)
if (int(sum(a8)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a8))
endif

a8 = 0.0
u2 = 0
call i2_to_c16(a8,u2,n)
if (int(sum(a8)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a8))
endif

a8 = 0.0
u1 = 0
call i1_to_c16(a8,u1,n)
if (int(sum(a8)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a8))
endif

print *,"***** c16_to_i?"
a8 = 0.0
u8 = 0
call c16_to_i8(a8,u8,n)
if (sum(u8) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u8)
endif

a8 = 0.0
u4 = 0
call c16_to_i4(a8,u4,n)
if (sum(u4) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u4)
endif

a8 = 0.0
u2 = 0
call c16_to_i2(a8,u2,n)
if (sum(u2) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u2)
endif

a8 = 0.0
u1 = 0
call c16_to_i1(a8,u1,n)
if (sum(u1) .eq. 114) then
  print *,"ok"
else
  print *,"ng", sum(u1)
endif

print *,"***** i?_to_c8"
a4 = 0.0
u8 = 0
call i8_to_c8(a4,u8,n)
if (int(sum(a4)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a4))
endif

a4 = 0.0
u4 = 0
call i4_to_c8(a4,u4,n)
if (int(sum(a4)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a4))
endif

a4 = 0.0
u2 = 0
call i2_to_c8(a4,u2,n)
if (int(sum(a4)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a4))
endif

a4 = 0.0
u1 = 0
call i1_to_c8(a4,u1,n)
if (int(sum(a4)) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", int(sum(a4))
endif

print *,"***** c8_to_i?"
a4 = 0.0
u8 = 0
call c8_to_i8(a4,u8,n)
if (sum(u8) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u8)
endif

a4 = 0.0
u4 = 0
call c8_to_i4(a4,u4,n)
if (sum(u4) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u4)
endif

a4 = 0.0
u2 = 0
call c8_to_i2(a4,u2,n)
if (sum(u2) .eq. 5050) then
  print *,"ok"
else
  print *,"ng", sum(u2)
endif

a4 = 0.0
u1 = 0
call c8_to_i1(a4,u1,n)
if (sum(u1) .eq. 114) then
  print *,"ok"
else
  print *,"ng", sum(u1)
endif

end program main

