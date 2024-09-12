type str
end type
type(str) :: aaa(0)
type tt
 type(str),allocatable :: sss1
end type
type(tt) :: sss
print *,"pass"
end
