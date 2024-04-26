integer,allocatable :: ialc
integer :: statvar=9

associate(aa=>statvar)
 allocate(ialc,stat = aa)
end associate

if(statvar==0) print*,'pass'

end
