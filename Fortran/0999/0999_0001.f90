type ty1
 integer,allocatable:: a(:)
end type
type(ty1) :: str(1)

where((/.true./))
str=str
end where

where((/.true./))
str(1)%a=1
elsewhere
str=str
end where

where((/.true./)) str=str

str=str

forall (i=1:2)
 str=str
end forall
end
