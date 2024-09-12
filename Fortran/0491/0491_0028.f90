 implicit none
 integer, allocatable, dimension (:,:,:) :: x
 integer ii
 do ii=1,1
 x = sub(inn)
 end do
print *,'pass'
 contains
 recursive function inn() result(inn_res)
 integer, allocatable, dimension (:,:,:) :: inn_res
 integer ss(3)
 allocate(inn_res(1,2,3))
 inn_res = 0
 end function inn
 function sub(f) result(res)
 implicit none
 procedure(inn), pointer, intent(in) :: f
 integer, allocatable, dimension (:,:,:) :: res
 res = f()
 end function sub
 end
