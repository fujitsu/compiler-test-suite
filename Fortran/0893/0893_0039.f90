type ty(l1,l2)
 integer,kind ::l1,l2
 integer::arr(l1:l2)
end type

type tty
type(ty(2,4)),allocatable ::cmp
end type

type(tty) :: obj
obj%cmp%arr(4) = 10
end
