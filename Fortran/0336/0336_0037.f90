subroutine i1tor4
integer(kind=1) i
real(kind=4) r
r = 0	
do i=121_1, 127_1
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

subroutine i2tor4
integer(kind=2) i
real(kind=4) r
r = 0
do i=32760_2, 32767_2
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

subroutine i4tor4
integer(kind=4) i
real(kind=4) r
r = 0
do i=16777217_4, 16777221_4
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

subroutine i4tor4_2
integer(kind=4) i
real(kind=4) r
r = 0
do i=2147483640_4, 2147483647_4
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

subroutine i8tor4
integer(kind=8) i
real(kind=4) r
r = 0
do i=1677720_8, 1677727_8
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

subroutine i8tor4_2
integer(kind=8) i
real(kind=4) r
r = 0
do i=2147483640_8, 2147483647_8
  r = r + real(i,kind=4)
enddo
print *,r
end subroutine

call i1tor4()
call i2tor4()
call i4tor4()
call i4tor4_2()
call i8tor4()
call i8tor4_2()
end
