 type st
   integer          :: stc
 endtype

 class(st),pointer::p
 allocate(st::p)

k=0
selecttype(p)
typeis(st)
  k=k+1
classis(st)
  continue
classdefault
endselect

select type(p)
type is(st)
  k=k+1
class is(st)
  continue
class default
end select

select case(k)
 case (2)
 casedefault
   print *,101
end select
  print*,'pass'
end
