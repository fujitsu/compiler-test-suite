call s(a)
print *,'pass'
contains
subroutine s(a)
intent(out)::a
a=a+1
end subroutine
end
