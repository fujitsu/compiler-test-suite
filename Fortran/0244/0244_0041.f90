type ty
 integer, contiguous, pointer :: ii(:)
end type

type(ty):: obj
logical :: arr(10)=.true.,brr(10)

allocate(obj%ii(33))
forall(j=1:10, arr(j) .eqv. is_contiguous(obj%ii))
 brr(j) = .true.
end forall
if(all(brr)) then
  print*,'pass'
else
  print*,is_contiguous(obj%ii)
end if
end
