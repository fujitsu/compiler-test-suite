integer,allocatable :: dd(:)
logical :: ll = is_contiguous(dd)
allocate(dd(3))
dd=2
if(ll .eqv. .true.) print*,'pass'
end
