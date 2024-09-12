call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer,allocatable:: a(:)
end type
type(ty1) :: str(1)

allocate(str(1)%a(1))
str(1)%a(1)=1
where((/.true./)) str=str

str=str

end
