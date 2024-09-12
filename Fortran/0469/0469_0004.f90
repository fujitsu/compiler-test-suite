type tt
integer,allocatable:: alc
end type

class(tt),allocatable :: obj1
class(tt),allocatable :: obj2

allocate(obj1)
allocate(obj2)

obj1 = obj2
print *,'pass'
end
