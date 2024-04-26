subroutine s1
type :: str
integer              :: ppp
character(:),pointer :: tt
character(:),pointer :: ttt(:,:)
end type
type(str) :: sss
allocate(character(10)::sss%ttt(3,3))
allocate(character(10)::sss%tt)
end
call s1
print *,'pass'
end
