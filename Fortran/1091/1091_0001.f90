 subroutine sub()
 character(:),allocatable::y3
nn=3
block
 allocate(character(nn)::y3)
end block

 end

 call sub

 print *,'sngg630r : pass'
 end

