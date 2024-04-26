subroutine sx
call       s
contains
subroutine s
implicit integer(2)(k)
i=1
i=2
end subroutine
end
call sx
print *,'pass'
end
