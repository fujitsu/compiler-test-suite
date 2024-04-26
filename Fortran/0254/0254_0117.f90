integer, dimension(5) :: a
integer :: ad1(1)
type ty
logical(kind=2),allocatable :: b
end type ty
type (ty):: obj
a=(/7,9,9,12,5/)
allocate(obj%b)
obj%b=.true.
ad1= maxloc(a,1,a<10,kind=4,back=obj%b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
