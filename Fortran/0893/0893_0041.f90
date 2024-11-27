type ty(l1,l2)
 integer,kind ::l1,l2
 integer::arr(l1:l2)
end type

type(ty(2,4)),pointer ::obj
obj%arr(4) = 10
end
