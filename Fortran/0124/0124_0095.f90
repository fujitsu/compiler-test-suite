program main
integer(kind=1) i1
integer(kind=2) i2
integer(kind=4) i4
integer(kind=8) i8
real(kind=4) r4
real(kind=8) r8
real(kind=16) r16

i1 = -2
i2 = -2
i4 = -2
i8 = -2

call subi1(i1)
call subi2(i2)
call subi4(i4)
call subi8(i8)

i1 = 2
i2 = 2
i4 = 2
i8 = 2

call subi1(i1)
call subi2(i2)
call subi4(i4)
call subi8(i8)

r4 = 1.0_4
r8 = 1.0_8
r16 = 1.0_16

call subr4(r4)
call subr8(r8)
call subr16(r16)

end program

subroutine subi1(i)
integer(kind=1) i,k
k = i
i = abs(i)
i = sign(i,-1*k)
if (-k == i) then
  print *,"ok"
else
  print *,"ng : ",i
endif
end subroutine

subroutine subi2(i)
integer(kind=2) i,k
k = i
i = abs(i)
i = sign(i,-1*k)
if (-k == i) then
  print *,"ok"
else
  print *,"ng : ",i
endif
end subroutine

subroutine subi4(i)
integer(kind=4) i,k
k = i
i = abs(i)
i = sign(i,-1*k)
if (-k == i) then
  print *,"ok"
else
  print *,"ng : ",i
endif
end subroutine

subroutine subi8(i)
integer(kind=8) i,k
k = i
i = abs(i)
i = sign(i,-1*k)
if (-k == i) then
  print *,"ok"
else
  print *,"ng : ",i
endif
end subroutine

subroutine subr4(r)
real(kind=4) r,k
k = r
r = abs(r)
r = sign(r,-1.0_4*k)
if (-r == k) then
  print *,"ok"
else
  print *,"ng : ",r
endif
end subroutine

subroutine subr8(r)
real(kind=8) r,k
k = r
r = abs(r)
r = sign(r,-1.0_8*k)
if (-r == k) then
  print *,"ok"
else
  print *,"ng : ",r
endif
end subroutine

subroutine subr16(r)
real(kind=16) r,k
k = r
r = abs(r)
r = sign(r,-1.0_16*k)
if (-r == k) then
  print *,"ok"
else
  print *,"ng : ",r
endif
end subroutine
