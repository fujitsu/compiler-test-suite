call sub(x)
if (abs(x-1)>0.0001)write(6,*) "NG" 
print *,'pass'
contains
subroutine sub(a)
volatile a
a=1
end subroutine
end
