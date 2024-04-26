type x
 class(*),allocatable :: x1
end type
call sub(x( '123' ) )
call sub(x( '123'(:) ) )
call sub(x( '123'(1:3) ) )
print *,'pass'
contains
subroutine sub( z )
type(x):: z
select type (p=>z%x1)
 type is (character(*))
if (p/='123') print *,101
end select
end subroutine
end
