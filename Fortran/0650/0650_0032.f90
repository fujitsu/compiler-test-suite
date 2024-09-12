print *,'pass'
call isub(i1)
call sss()   
if (i1.ne.1) write(6,*) 'err'
contains
subroutine isub(j)
j=1
end subroutine
end
subroutine sss()
call ISUB(i2)
if (i2.ne.2) write(6,*) 'err1'
end
subroutine ISUB(j)
j=2
end subroutine
