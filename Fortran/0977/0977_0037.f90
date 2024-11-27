i=0;k=1
call s(i+1)
call s(1)
if (1/=2-1)write(6,*) "NG"
if (k/=1)write(6,*) "NG"
call s((k))
do m=1,i
call s(i)
end do
print *,'pass'
contains
subroutine s(j)
value::j
if (j/=1)write(6,*) "NG"
j=j+1
if (j/=2)write(6,*) "NG"
end subroutine
end

