module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm,k,fm2)
  class(base),pointer,intent(in) ::fm(:),fm2(:,:,:)
  class(base),allocatable::tmp(:),tmp2(:,:,:)
if (size(fm)/=2) print *,101
if (fm(1)%b1/=201) print *,7001
if (fm(2)%b1/=202) print *,7002

  allocate( tmp(2), source=fm)
  allocate( tmp2, source=fm2)

if (size(tmp)/=2) print *,9001
if (tmp(1)%b1/=201) print *,7011
if (tmp(2)%b1/=202) print *,7012
if (tmp2(1,1,1)%b1/=201) print *,7011
if (tmp2(2,2,2)%b1/=202) print *,7012

if (k/=1) print *,1001
end
end


use m1
  type x
     integer::x1
  class (base),allocatable ::fm(:),fm2(:,:,:)
  end type
  type(x),target::v
     allocate(v%fm(2),v%fm2(2,2,2))
     v%fm(1)%b1   =201
     v%fm(2)%b1   =202
     v%fm2(1,1,1)%b1   =201
     v%fm2(2,2,2)%b1   =202
call s1(v%fm(:),1,v%fm2(:,:,:))
print *,'sngg448p : pass'
end
