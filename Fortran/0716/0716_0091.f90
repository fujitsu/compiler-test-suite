call test01()
print *,"pass"
end

subroutine test01()
integer ,parameter :: vcc= z"7fffffff" 

enum, bind(c) 
 enumerator :: aa=-1
 enumerator :: cc=vcc
 enumerator :: bb 
end enum
print *,aa
print *,bb
end
