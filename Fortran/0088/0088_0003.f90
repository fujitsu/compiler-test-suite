type t
character(:),allocatable::b
end type
type(t)::tt
character(:),allocatable::a
allocate(a,source="12")
call move_alloc(a,tt%b)
if(tt%b/="12") print *,'err'
print *,"pass"
end
