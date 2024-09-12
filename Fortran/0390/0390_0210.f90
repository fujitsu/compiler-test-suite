subroutine s1
type x
  character(:),pointer,contiguous :: array(:,:,:)
end type
type(x),pointer::v
allocate(v)
allocate(character(5):: v%array(3,2,4))

  if (.not.is_contiguous(v%array)) print *,1001
  if (.not.is_contiguous(v%array(:,:,:))) print *,1002
  if (.not.is_contiguous(v%array(:,:,:)(:))) print *,1003
  if (is_contiguous(v%array(:,:,:)(2:5))) print *,1004
  if (is_contiguous(v%array(:,:,:)(:4))) print *,1005
  if (is_contiguous(v%array(:,:,:)(2:))) print *,1006
  if (is_contiguous(v%array(2:,:,:))) print *,1012
  if (is_contiguous(v%array(2:,:,:)(:))) print *,1013
  if (is_contiguous(v%array(2:,:,:)(1:5))) print *,1014
  if (is_contiguous(v%array(2:,:,:)(:5))) print *,1015
  if (is_contiguous(v%array(2:,:,:)(1:))) print *,1016
  if (is_contiguous(v%array(:2,:,:))) print *,1022
  if (is_contiguous(v%array(:2,:,:)(:))) print *,1023
  if (is_contiguous(v%array(:2,:,:)(1:5))) print *,1024
  if (is_contiguous(v%array(:2,:,:)(:5))) print *,1025
  if (is_contiguous(v%array(:2,:,:)(1:))) print *,1026
  if (is_contiguous(v%array(1:2,:,:))) print *,1032
  if (is_contiguous(v%array(1:2,:,:)(:))) print *,1033
  if (is_contiguous(v%array(1:2,:,:)(1:5))) print *,1034
  if (is_contiguous(v%array(1:2,:,:)(:5))) print *,1035
  if (is_contiguous(v%array(1:2,:,:)(1:))) print *,1036
end
subroutine s2(k1,k3,k5)
type x
  character(:),pointer,contiguous :: array(:,:,:)
end type
type(x),pointer::v
allocate(v)
allocate(character(5):: v%array(3,2,4))

  if (.not.is_contiguous(v%array)) print *,1001
  if (.not.is_contiguous(v%array(:,:,:))) print *,1002
  if (.not.is_contiguous(v%array(:,:,:)(:))) print *,1003
  if (is_contiguous(v%array(:,:,:)(k1:5))) print *,1004
  if (is_contiguous(v%array(:,:,:)(:k5))) print *,1005
  if (is_contiguous(v%array(:,:,:)(k1:))) print *,1006
  if (is_contiguous(v%array(k1:,:,:))) print *,1012
  if (is_contiguous(v%array(k1:,:,:)(:))) print *,1013
  if (is_contiguous(v%array(k1:,:,:)(k1:5))) print *,1014
  if (is_contiguous(v%array(k1:,:,:)(:k5))) print *,1015
  if (is_contiguous(v%array(k1:,:,:)(k1:))) print *,1016
  if (is_contiguous(v%array(:k3,:,:))) print *,1022
  if (is_contiguous(v%array(:k3,:,:)(:))) print *,1023
  if (is_contiguous(v%array(:k3,:,:)(k1:5))) print *,1024
  if (is_contiguous(v%array(:k3,:,:)(:k5))) print *,1025
  if (is_contiguous(v%array(:k3,:,:)(k1:))) print *,1026
  if (is_contiguous(v%array(k1:3,:,:))) print *,1032
  if (is_contiguous(v%array(k1:3,:,:)(:))) print *,1033
  if (is_contiguous(v%array(k1:3,:,:)(k1:5))) print *,1034
  if (is_contiguous(v%array(k1:3,:,:)(:k5))) print *,1035
  if (is_contiguous(v%array(k1:3,:,:)(k1:))) print *,1036
end
call s1
call s2(2,2,4)
print *,'pass'
end
