subroutine s1
interface
 subroutine x
 end
end interface
call foo()
contains
subroutine internal()
end subroutine 
subroutine foo()
procedure (internal),pointer:: p=> x
call p
end subroutine 
end
call s1
print *,'pass'
end
 subroutine x
 end
