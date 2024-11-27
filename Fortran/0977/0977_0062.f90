subroutine s(i)
intent(in)::i
call s1(i)
contains
subroutine s1(j)
integer,value::j
if (j/=2)write(6,*) "NG"
j=1
end subroutine
end
call s(2)
print *,'pass'
end
