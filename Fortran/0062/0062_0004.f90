!
subroutine dce_r8(x,y)
real   (kind=8) :: x,y,z
z = x + y
end subroutine

subroutine dce_r8_do(x,y,n)
real   (kind=8) :: x,y,z
z = 0._8
do i=1,n
  z = z + x + y
enddo
end subroutine

subroutine dce_i8(x,y)
integer(kind=8) :: x,y
z = x + y
end subroutine

subroutine dce_i8_do(x,y,n)
integer(kind=8) :: x,y,z
z = 0._8
do i=1,n
  z = z + x + y
enddo
end subroutine

program main
real   (kind=8) :: r1,r2
integer(kind=8) :: i1,i2

!
r1 = 2._8
r2 = 3._8
call dce_r8(r1,r2)
call dce_r8_do(r1,r2,100)

!
i1 = 2_8
i2 = 3_8
call dce_i8(i1,i2)
call dce_i8_do(i1,i2,100)

print *,"ok"
end program
