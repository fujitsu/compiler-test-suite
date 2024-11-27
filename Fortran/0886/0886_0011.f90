type tt
 integer,contiguous :: cmp(5)
end type

type(tt) :: obj=tt(2)
print*,obj
end
