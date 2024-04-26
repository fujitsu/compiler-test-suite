integer(kind=8),allocatable :: ialc(:,:,:,:,:,:,:)
integer::st=9
character(len=50) :: emsgvar=' ' 

associate(bb=>emsgvar)
 allocate(ialc(44444444,444444,444444,444444,444444,444444,444444),errmsg=bb,stat=st)

 if(st/=0)print*,'pass',bb
end associate

end
