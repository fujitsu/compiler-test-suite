type t
character(:),allocatable::a
end type
type(t)::tt
character(:),allocatable::b
allocate(tt%a,source="12")
call move_alloc(tt%a,b)
if(b/="12") print *,'err'
print *,"pass"
end
