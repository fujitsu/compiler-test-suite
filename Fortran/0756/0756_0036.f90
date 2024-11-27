call s(a)
print *,'pass'
contains
subroutine s(a)
intent(out)::a
b=a+1
end subroutine
end
