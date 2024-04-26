implicit none
integer, dimension(5) :: a
integer :: ad1(1)
type ty
  logical :: b
end type ty
type(ty) :: obj
a=(/7,1,1,2,5/)
obj%b=.true.
ad1= minloc(array=a,kind=4,back=obj%b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
