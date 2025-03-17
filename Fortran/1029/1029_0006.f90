type ty1
 integer,allocatable:: a(:)
end type
type(ty1) :: str1(1)
type(ty1) :: str2(1)

  allocate(str1(1)%a(5:5))
  str1(1)%a=5

  where((/.true./))
    str1=str1
    str2=str2
  end where

  if (.not.allocated(str1(1)%a)) write(6,*) "NG"
  if (any(str1(1)%a/=5)) write(6,*) "NG"
  if (any(lbound(str1(1)%a)/=5)) write(6,*) "NG"
  if (     allocated(str2(1)%a)) write(6,*) "NG"

  where((/.true./))
    str1(1)%a=1
    str2=str2
  elsewhere
    str1=str1
    str1(1)%a=0
  end where

  if (.not.allocated(str1(1)%a)) write(6,*) "NG"
  if (any(str1(1)%a/=1)) write(6,*) "NG"
  if (any(lbound(str1(1)%a)/=5)) write(6,*) "NG"
  if (     allocated(str2(1)%a)) write(6,*) "NG"

  where((/.true./)) str1=str1

  if (.not.allocated(str1(1)%a)) write(6,*) "NG"
  if (any(str1(1)%a/=1)) write(6,*) "NG"
  if (any(lbound(str1(1)%a)/=5)) write(6,*) "NG"
  if (     allocated(str2(1)%a)) write(6,*) "NG"

  str1=str1
  str2=str2

  if (.not.allocated(str1(1)%a)) write(6,*) "NG"
  if (any(str1(1)%a/=1)) write(6,*) "NG"
  if (any(lbound(str1(1)%a)/=5)) write(6,*) "NG"
  if (     allocated(str2(1)%a)) write(6,*) "NG"

  forall (i=1:2)
    str1=str1
    str2=str2
  end forall

  if (.not.allocated(str1(1)%a)) write(6,*) "NG"
  if (any(str1(1)%a/=1)) write(6,*) "NG"
  if (any(lbound(str1(1)%a)/=5)) write(6,*) "NG"
  if (     allocated(str2(1)%a)) write(6,*) "NG"

 print *,'pass'
end
