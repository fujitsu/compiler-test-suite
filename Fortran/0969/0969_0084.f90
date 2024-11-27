type ty01
 integer :: i01
end type

intrinsic          :: index
intrinsic          :: same_type_as
integer, parameter :: ipa = index('test','est')
integer            :: i1
logical            :: l1

l1 = same_type_as(ty01(1), ty01(1))  
i1 = index('test', 'est')            


if (ipa.eq.i1) then
 if (l1) print *, 'pass'
end if

end
