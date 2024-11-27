type ty
integer,pointer::  jj
end type ty


type tt
type(ty),dimension(:,:),codimension[:,:,:,:,:],allocatable :: obj(:)[:],obj2
end type 




end
