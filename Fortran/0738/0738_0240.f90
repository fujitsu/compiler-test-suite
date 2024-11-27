type ty1
  integer(4),allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(3:4)
end type
type(ty2) :: str

  allocate(str%sss1(3)%arr(1))
  allocate(str%sss1(4)%arr(1))

  str=ty2((/ty1((/1,2,3/)),ty1((/4,5,6,7/))/))

  if (.not.allocated(str%sss1(3)%arr)) write(6,*) "NG"
  if (.not.allocated(str%sss1(4)%arr)) write(6,*) "NG"
  if (size(str%sss1(3)%arr)/=3) write(6,*) "NG"
  if (size(str%sss1(4)%arr)/=4) write(6,*) "NG"
  if (any(str%sss1(3)%arr/=(/1,2,3/))) write(6,*) "NG"
  if (any(str%sss1(4)%arr/=(/4,5,6,7/))) write(6,*) "NG"

  str=ty2((/(ty1((/(j,j=i,1,-1)/)),i=3,4)/))

  if (.not.allocated(str%sss1(3)%arr)) write(6,*) "NG"
  if (.not.allocated(str%sss1(4)%arr)) write(6,*) "NG"
  if (size(str%sss1(3)%arr)/=3) write(6,*) "NG"
  if (size(str%sss1(4)%arr)/=4) write(6,*) "NG"
  if (any(str%sss1(3)%arr/=(/3,2,1/))) write(6,*) "NG"
  if (any(str%sss1(4)%arr/=(/4,3,2,1/))) write(6,*) "NG"

 print *,'pass'

end
