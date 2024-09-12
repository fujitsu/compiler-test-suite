program main
interface
subroutine s() bind(c,name='_testxx')
end subroutine
end interface

call s
print *,'pass'
end

subroutine s() bind(c,name='_testxx')
end
