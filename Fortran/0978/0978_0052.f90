subroutine x0
write(20,*) 1
rewind 20
read(20,*) i
call s(i+2)
call s(i+2)
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
write(21,*) 1
rewind 21
read(21,*) i
call ss(i+2)
call ss(i+2)
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
