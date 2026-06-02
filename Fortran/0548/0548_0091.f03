implicit none
print *,'pass'
contains
subroutine sub(a)
integer::a
volatile :: a
associate(p=>a)
end associate
end subroutine
end
