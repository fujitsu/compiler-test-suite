Type tt
  Integer,pointer :: ptr=>NULL()
End type

Type tt2
  Type(tt) :: cmp
  Type(tt),pointer :: ptr2=>NULL()
End type

block
Type(tt2) :: obj
if(associated(obj%ptr2) .eqv. .false.) print*,'pass'
if(associated(obj%cmp%ptr) .neqv. .false.) print*,101
End block
end

