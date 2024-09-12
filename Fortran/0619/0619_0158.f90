program main

 type :: t1
  integer :: i1
 end type
 type,extends(t1) :: t2
  type (t1) :: ty1
 end type
  type (t2),parameter :: typ=t2(t1(1),t1(5))
  type (t2)           :: tyv
  tyv=t2(t1(1),t1(5))
if (typ%ty1%i1/=5)print *,101
if (typ%t1%i1/=1)print *,102
if (tyv%ty1%i1/=5)print *,201
if (tyv%t1%i1/=1)print *,202
print *,'pass'
end program main
