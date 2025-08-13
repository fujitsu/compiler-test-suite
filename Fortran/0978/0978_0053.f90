subroutine x0
write(22,*) 1
rewind 22
read(22,*) i
call t(i+2)
call t(i+2)
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
write(23,*) 1
rewind 23
read(23,*) i
call tt(i+2)
call tt(i+2)
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
