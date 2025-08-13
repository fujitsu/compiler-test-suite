type ty
integer::ii
logical::ll
character*10::ch
end type
integer::res1
logical::res2
character*10::res3
type(ty)::obj
obj = ty(123,.true.,"fortran")
open(unit=20,file="fort.106",action="write")
write(20,FMT='(*(G0," "))')obj%ii,obj%ll,obj%ch
close(20)
open(unit=30,file="fort.106",action="read")
read(30,40)res1,res2,res3
close(30)
10 format(*(G0))
40 format((I4,l2,A10))
if (res1/=obj%ii)print*,101
if (.not.res2)print*,102
if (res3/=obj%ch)print*,103
print*,"pass"
end

