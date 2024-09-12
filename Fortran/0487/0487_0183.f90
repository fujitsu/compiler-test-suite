    module mod
 integer,parameter::c(1,2,3)=reshape([1,2,3,4,5,6],[1,2,3])
         contains
           recursive function inn() result(inn_res)
            integer, allocatable, dimension (:,:,:) :: inn_res
             allocate(inn_res(1,2,3))
             inn_res = c
           end function inn
      end
        use mod
        implicit none
       integer, allocatable, dimension (:,:,:) :: x
        integer ii
             allocate(x(1,2,3))
        do ii=1,1
        x = sub(inn)
       end do
        if (any(x/=c))print *,101,x
             print *, 'pass'
        contains
         function sub(f) result(res)
            implicit none
            procedure(inn), pointer, intent(in) :: f
            integer, allocatable, dimension (:,:,:) :: res
             allocate(res(1,2,3))
            res = f()
          end function sub
        end
