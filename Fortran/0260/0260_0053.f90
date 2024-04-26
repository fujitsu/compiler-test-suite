type(character*3),pointer :: cc
allocate(cc)
if(cc%len .ne. 3) print*,"121"
print*,"Pass"
end

