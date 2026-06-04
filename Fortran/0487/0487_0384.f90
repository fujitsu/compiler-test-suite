call sub( 1 )
print *,'pass'
contains
subroutine sub (k )
integer:: k(..)
if (rank(k)/=0) print *,101
end subroutine
end
