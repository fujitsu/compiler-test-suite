type ty
logical::arr(4)
end type
type(ty)::obj
call sub
contains
subroutine sub
logical::res
obj = ty((/.true.,.false.,.true.,.false./))
open(100,file="fort.110",action="write")
write(100,'(*(L2))')obj%arr
close(100)
open(200,file="fort.110",action="read")
read(200,'(L2)')res
close(200)
if (.not.res)print*,101
print*,"Pass"
end subroutine
end
