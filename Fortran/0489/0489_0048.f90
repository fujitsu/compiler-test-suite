interface g
 subroutine ss1(a)
   integer:: a(*)
 end subroutine
end interface
integer:: x(10)
call ss1( x(1))
print *,'pass'
end
 subroutine ss1(a)
   integer:: a(*)
 end subroutine
 
