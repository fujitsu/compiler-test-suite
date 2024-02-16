type t
character(:),allocatable::a,b
end type
class(t),allocatable::tt
allocate(tt)
allocate(tt%a,source="12")
call move_alloc(tt%a,tt%b)
if(tt%b/="12") print *,'err'
print *,"pass"
end
