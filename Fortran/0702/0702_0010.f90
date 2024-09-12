call test01()
print *,'pass'
end
subroutine test01()
logical*1 l1
logical*2 l2
logical*4 l4
logical*8 l8
call sub(loc(l1))
call sub(loc(l2))
call sub(loc(l4))
call sub(loc(l8))
contains
subroutine sub(ii)
pointer (ii,ij)
jj=ii
end subroutine
end
