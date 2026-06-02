integer::a(2)
call s1(a)
print *,'pass'
contains
subroutine s1(d)
integer,contiguous::d(..)
end subroutine
end
