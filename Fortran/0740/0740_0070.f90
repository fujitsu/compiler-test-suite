integer,volatile::x
x=1
if (x/=1)write(6,*) "NG"
call sub(x)
call sub1(x)
print *,'pass'
contains
subroutine sub(i)
volatile i
if (i/=1)write(6,*) "NG"
end subroutine
subroutine sub1(x)
volatile x
integer::x
if (x/=1)write(6,*) "NG"
end subroutine
end
