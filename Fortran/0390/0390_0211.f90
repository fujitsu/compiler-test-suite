subroutine s1
type x
  character(:),pointer,contiguous :: array(:)
end type
type(x),pointer::v
allocate(v)
allocate(character(5):: v%array(3))

  if (.not.is_contiguous(v%array)) print *,1001
  if (.not.is_contiguous(v%array(:))) print *,1002
  if (.not.is_contiguous(v%array(:)(:))) print *,1003
  if (.not.is_contiguous(v%array(:)(1:5))) print *,1004
  if (.not.is_contiguous(v%array(:)(:5))) print *,1005
  if (.not.is_contiguous(v%array(:)(1:))) print *,1006
  if (.not.is_contiguous(v%array(1:))) print *,1012
  if (.not.is_contiguous(v%array(1:)(:))) print *,1013
  if (.not.is_contiguous(v%array(1:)(1:5))) print *,1014
  if (.not.is_contiguous(v%array(1:)(:5))) print *,1015
  if (.not.is_contiguous(v%array(1:)(1:))) print *,1016
  if (.not.is_contiguous(v%array(:3))) print *,1022
  if (.not.is_contiguous(v%array(:3)(:))) print *,1023
  if (.not.is_contiguous(v%array(:3)(1:5))) print *,1024
  if (.not.is_contiguous(v%array(:3)(:5))) print *,1025
  if (.not.is_contiguous(v%array(:3)(1:))) print *,1026
  if (.not.is_contiguous(v%array(1:3))) print *,1032
  if (.not.is_contiguous(v%array(1:3)(:))) print *,1033
  if (.not.is_contiguous(v%array(1:3)(1:5))) print *,1034
  if (.not.is_contiguous(v%array(1:3)(:5))) print *,1035
  if (.not.is_contiguous(v%array(1:3)(1:))) print *,1036
end
subroutine s2(k1,k3,k5)
type x
  character(:),pointer,contiguous :: array(:)
end type
type(x),pointer::v
allocate(v)
allocate(character(5):: v%array(3))

  if (.not.is_contiguous(v%array)) print *,1001
  if (.not.is_contiguous(v%array(:))) print *,1002
  if (.not.is_contiguous(v%array(:)(:))) print *,1003
  if (.not.is_contiguous(v%array(:)(k1:5))) print *,1004
  if (.not.is_contiguous(v%array(:)(:k5))) print *,1005
  if (.not.is_contiguous(v%array(:)(k1:))) print *,1006
  if (.not.is_contiguous(v%array(k1:))) print *,1012
  if (.not.is_contiguous(v%array(k1:)(:))) print *,1013
  if (.not.is_contiguous(v%array(k1:)(k1:5))) print *,1014
  if (.not.is_contiguous(v%array(k1:)(:k5))) print *,1015
  if (.not.is_contiguous(v%array(k1:)(k1:))) print *,1016
  if (.not.is_contiguous(v%array(:k3))) print *,1022
  if (.not.is_contiguous(v%array(:k3)(:))) print *,1023
  if (.not.is_contiguous(v%array(:k3)(k1:5))) print *,1024
  if (.not.is_contiguous(v%array(:k3)(:k5))) print *,1025
  if (.not.is_contiguous(v%array(:k3)(k1:))) print *,1026
  if (.not.is_contiguous(v%array(k1:3))) print *,1032
  if (.not.is_contiguous(v%array(k1:3)(:))) print *,1033
  if (.not.is_contiguous(v%array(k1:3)(k1:5))) print *,1034
  if (.not.is_contiguous(v%array(k1:3)(:k5))) print *,1035
  if (.not.is_contiguous(v%array(k1:3)(k1:))) print *,1036
end
call s1
call s2(1,3,5)
print *,'pass'
end
