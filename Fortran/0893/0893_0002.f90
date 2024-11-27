type :: t(k)
 integer,kind :: k
 integer :: data
procedure(type(t(k+1))), pointer, nopass :: ppc2
end type
end


