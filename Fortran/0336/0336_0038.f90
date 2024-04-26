subroutine i1tor8
integer(kind=1) i
real(kind=8) r
r = 0
do i=121_1, 127_1
  r = r + real(i,kind=8)
enddo
print *,r
end subroutine

subroutine i2tor8
integer(kind=2) i
real(kind=8) r
r = 0
do i=32760_2, 32767_2
  r = r + real(i,kind=8)
enddo
print *,r
end subroutine

subroutine i4tor8
integer(kind=4) i
real(kind=8) r
r = 0
do i=2147483640_4, 2147483647_4
  r = r + real(i,kind=8)
enddo
print *,r
end subroutine

subroutine i4tor8_2
integer(kind=4) i
real(kind=8) r
r = 0
do i=16777217_4, 16777222_4
  r = r + real(i,kind=8)
enddo
print *,r
end subroutine

subroutine i8tor8
integer(kind=8) i
real(kind=8) r
r = 0
do i=9007199254740993_8, 9007199254741000_8
  r = r + real(i,kind=8)
enddo
print *,r
end subroutine

call i1tor8()
call i2tor8()
call i4tor8()
call i4tor8_2()
call i8tor8()
end
