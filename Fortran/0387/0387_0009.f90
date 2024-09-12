interface
 function func1(i) result(j)
 integer :: i,j
end function
end interface
type ty1
 integer :: i1=1
 procedure(func1),nopass, pointer :: pf
end type
type(ty1)::tt
procedure(func1),pointer :: pfp
tt=ty1(1,pfp)
tt=ty1(1,func1)
tt=ty1(1,null())
tt=ty1(pf=null(),i1=1)
tt=ty1(pf=null())
tt=ty1(pf=func1,i1=1)
tt=ty1(pf=func1)

print *,'pass'

end

function func1(i) result(j)
 integer :: i,j
 j=i
end function
