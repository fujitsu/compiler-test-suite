program main
interface
subroutine sub2(d)
integer::d(:)
end subroutine
end interface

integer::i(5)=0
associate(a=>i)
 a(3)=3
end associate
if(i(3)/=3) print*,'101'
call sub()
call sub2(i)
print*,'pass'

contains
subroutine sub()
associate(a=>i)
 a(3)=5
end associate
if(i(3)/=5) print*,'102'
end subroutine
end

subroutine sub2(d)
integer::d(:)
associate(a=>d)
 a(3)=7
end associate
if(d(3)/=7) print*,'103'
end subroutine
