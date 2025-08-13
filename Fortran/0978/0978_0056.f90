subroutine x0
write(28,*) 1
rewind 28
read(28,*) i
call u(3  )
call u(3  )
call s(i+2)
call s(i+2)
call t(i+2)
call t(i+2)
call u(i+2)
call u(i+2)
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
subroutine u(j)
integer::j
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
write(29,*) 1
rewind 29
read(29,*) i
call uu(3  )
call uu(3  )
call ss(i+2)
call ss(i+2)
call tt(i+2)
call tt(i+2)
call uu(i+2)
call uu(i+2)
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
subroutine uu(j)
integer::j
if (j/=3)write(6,*) "NG"
j=10
end subroutine
call x0
call x1
print *,'pass'
end
