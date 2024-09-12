implicit none
print *,'pass'
contains
subroutine sub(a)
integer::a
asynchronous a
associate(p=>a)
end associate
end subroutine
end
