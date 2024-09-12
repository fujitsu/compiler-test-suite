call test01()
call test02()
call test03()
call test04()
print *,"pass"
end
subroutine test01()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=8) :: i8
open (10,iostat=i1)
open (11,iostat=i2)
open (12,iostat=i8)
end

subroutine test02()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=8) :: i8
write (10,iostat=i1) 10
rewind (10)
read (10,iostat=i1) iii
rewind 11
write (11,iostat=i2) 10
rewind (11)
read (11,iostat=i2) iii
rewind 12
write (12,iostat=i8) 10
rewind (12)
read (12,iostat=i8) iii
iii=10
iii=iii
end

subroutine test03()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=8) :: i8
backspace (10,iostat=i1)
backspace (11,iostat=i2)
backspace (12,iostat=i8)
rewind (12,iostat=i1)
rewind (12,iostat=i2)
rewind (12,iostat=i8)
endfile (12,iostat=i1)
endfile (12,iostat=i2)
endfile (12,iostat=i8)
end

subroutine test04()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=8) :: i8
inquire (10,iostat=i1)
inquire (10,iostat=i2)
inquire (10,iostat=i8)
end


