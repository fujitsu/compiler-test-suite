subroutine x0
write(11,*) 1
rewind 11
read(11,*) i
call u(3  )
call u(3  )
call s(3)
call s(3)
call t(3)
call t(3)
call u(3)
call u(3)
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
write(12,*) 1
rewind 12
read(12,*) i
call uu(3  )
call uu(3  )
call ss(3)
call ss(3)
call tt(3)
call tt(3)
call uu(3)
call uu(3)
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
