subroutine x0
write(24,*) 1
rewind 24
read(24,*) i
do k=1,3
call s(i+2)
call s(i+2)
call t(i+2)
call t(i+2)
end do
contains
subroutine t(j)
integer,optional,value::j
if (j/=3)write(6,*) "NG"
j=10
end subroutine
subroutine s(j)
integer,value::j
if (j/=3)write(6,*) "NG"
j=10
end subroutine
end
subroutine x1
interface
subroutine tt(j)
integer,optional,value::j
end subroutine
subroutine ss(j)
integer,value::j
end subroutine
end interface
write(25,*) 1
rewind 25
read(25,*) i
do k=1,3
call ss(i+2)
call ss(i+2)
call tt(i+2)
call tt(i+2)
end do
end
subroutine tt(j)
integer,optional,value::j
if (j/=3)write(6,*) "NG"
j=10
end subroutine
subroutine ss(j)
integer,value::j
if (j/=3)write(6,*) "NG"
j=10
end subroutine
call x0
call x1
print *,'pass'
end
