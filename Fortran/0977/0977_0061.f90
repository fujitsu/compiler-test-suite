subroutine s1(i)
integer,intent(in),value::i
end subroutine
subroutine s2(i)
integer,intent(in)::i
end subroutine
subroutine s(i)
j=loc(i)
if (j/=100)write(6,*) "NG"
end
interface
subroutine s1(i)
integer,intent(in),value::i
end subroutine
subroutine s2(i)
integer,intent(in)::i
end subroutine
end interface
i=100
call s(%val(i))
call ss(%val(i))
call ssss(%val(i))
call sssss(i)
print *,'pass'
contains
subroutine ss(i)
integer,value::i
j=i
if (j/=100)write(6,*) "NG"
end subroutine
subroutine ssss(i)
integer::i
j=loc(i)
if (j/=100)write(6,*) "NG"
end subroutine
subroutine sssss(i)
integer,value::i
j=i
if (j/=100)write(6,*) "NG"
end subroutine
end
subroutine sss(i)
integer,value::i
j=i
if (j/=100)write(6,*) "NG"
end subroutine
