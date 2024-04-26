call s(a)
print *,'pass'
contains
subroutine s(a)
optional::a
associate(p=>a)
end associate
end subroutine
end
