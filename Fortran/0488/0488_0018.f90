subroutine s1
interface 
 subroutine foo()
 end subroutine 
end interface
procedure (foo),pointer:: p=> foo
call p
end     
subroutine foo()
end subroutine 
call s1
print *,'pass'
end
