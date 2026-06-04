call test01()
call test02()
print *,'pass'
end

module mod02
type ty1
integer ,allocatable:: j(: )
end type
end
subroutine test02()
use mod02
type(ty1) :: s
allocate(s%j(10))
call i2sub(s)
deallocate(s%j)
s=ty1((/1/))
call isub(s)
contains
subroutine isub(ia)
type(ty1) :: ia
if (size(ia%j).ne.1) print *,'fail'
end subroutine
subroutine i2sub(ia)
type(ty1) :: ia
if (size(ia%j).ne.10) print *,'fail'
end subroutine
end


module mod01
type ty1
integer ,allocatable:: j(: )
end type
contains
subroutine msub(ia)
type(ty1) :: ia
if (size(ia%j).ne.1) print *,'fail'
end subroutine
subroutine m2sub(ia)
type(ty1) :: ia
return
1 if (size(ia%j).ne.0) print *,'fail'
end subroutine
end
subroutine test01()
use mod01
call i2sub(ty1(null()))
call m2sub(ty1(null()))
call msub(ty1((/1/)))
call isub(ty1((/1/)))
contains
subroutine isub(ia)
type(ty1) :: ia
if (size(ia%j).ne.1) print *,'fail'
end subroutine
subroutine i2sub(ia)
type(ty1) :: ia
return 
10if (size(ia%j).ne.0) print *,'fail'
end subroutine
end
