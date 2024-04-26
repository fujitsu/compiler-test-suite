implicit none
block
save
integer,allocatable :: alc
allocate(alc)
alc=2
print*,alc
end block

end
