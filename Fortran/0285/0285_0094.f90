integer(kind=8),allocatable :: ialc(:)
character(len=50) :: emsgvar =' '

associate(bb=>emsgvar)
 allocate(ialc(44))
 deallocate(ialc,errmsg=bb)

 print*,'pass',bb
end associate

end
