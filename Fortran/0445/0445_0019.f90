module module_test
  implicit none
  type type_test1
     integer,allocatable :: vara(:),varb(:,:)
     integer :: var1(2),var2(2,3)
     procedure(proc_test1), pointer :: pointer_test
     integer,allocatable :: varc(:),vard(:,:)
     integer :: var3(2),var4(2,3)
  end type 
  type type_test2
     integer,allocatable :: vara(:),varb(:,:)
     integer :: var1(2),var2(2,3)
     procedure(proc_test2), pointer :: pointer_test
     type(type_test1)::varx
     type(type_test1)::vary(2)
     integer,allocatable :: varc(:),vard(:,:)
     integer :: var3(2),var4(2,3)
  end type 

  contains
  integer function proc_test1(this)
  class(type_test1), intent(inout) :: this
  proc_test1 = 10
  this%var1 = [1,2]
  this%var2 = reshape([1,2,3,4,5,6],[2,3])
  this%var3 = [1,2]+10
  this%var4 = reshape([1,2,3,4,5,6],[2,3])+20
  this%vara = [1,2]+30
  this%varb = reshape([1,2,3,4,5,6],[2,3])+40
  this%varc = [1,2]+50
  this%vard = reshape([1,2,3,4,5,6],[2,3])+60
  end function 
  integer function proc_test2(this)
  class(type_test2), intent(inout) :: this
  proc_test2 = 10
  this%var1 = [1,2]
  this%var2 = reshape([1,2,3,4,5,6],[2,3])
  this%var3 = [1,2]+10
  this%var4 = reshape([1,2,3,4,5,6],[2,3])+20
  this%vara = [1,2]+30
  this%varb = reshape([1,2,3,4,5,6],[2,3])+40
  this%varc = [1,2]+50
  this%vard = reshape([1,2,3,4,5,6],[2,3])+60

  this%varx%var1 = [1,2]
  this%varx%var2 = reshape([1,2,3,4,5,6],[2,3])
  this%varx%var3 = [1,2]+10
  this%varx%var4 = reshape([1,2,3,4,5,6],[2,3])+20
  this%varx%vara = [1,2]+30
  this%varx%varb = reshape([1,2,3,4,5,6],[2,3])+40
  this%varx%varc = [1,2]+50
  this%varx%vard = reshape([1,2,3,4,5,6],[2,3])+60
  end function
end module module_test


use module_test
type(type_test2):: x
allocate(x%vara(2),x%varb(2,3))
allocate(x%varc(2),x%vard(2,3))
allocate(x%varx%vara(2),x%varx%varb(2,3))
allocate(x%varx%varc(2),x%varx%vard(2,3))
x%pointer_test => proc_test2
if (x%pointer_test()/=10) print *,101
if (any(x%var1/=[1,2])) print *,202
if (any(x%var2/=reshape([1,2,3,4,5,6],[2,3]))) print *,203
if (any(x%var3/=10+[1,2])) print *,1202
if (any(x%var4/=20+reshape([1,2,3,4,5,6],[2,3]))) print *,1203
if (any(x%vara/=30+[1,2])) print *,2202
if (any(x%varb/=40+reshape([1,2,3,4,5,6],[2,3]))) print *,2203
if (any(x%varc/=50+[1,2])) print *,3202
if (any(x%vard/=60+reshape([1,2,3,4,5,6],[2,3]))) print *,3203

if (any(x%varx%var1/=[1,2])) print *,202
if (any(x%varx%var2/=reshape([1,2,3,4,5,6],[2,3]))) print *,203
if (any(x%varx%var3/=10+[1,2])) print *,1202
if (any(x%varx%var4/=20+reshape([1,2,3,4,5,6],[2,3]))) print *,1203
if (any(x%varx%vara/=30+[1,2])) print *,2202
if (any(x%varx%varb/=40+reshape([1,2,3,4,5,6],[2,3]))) print *,2203
if (any(x%varx%varc/=50+[1,2])) print *,3202
if (any(x%varx%vard/=60+reshape([1,2,3,4,5,6],[2,3]))) print *,3203
print *,'pass'
end