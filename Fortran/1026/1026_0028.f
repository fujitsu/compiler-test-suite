       program test
       real, dimension(:,:,:), allocatable :: T1
       integer*2                :: mix_cells
       mix_cells = 227
       allocate (T1(1:mix_cells,3,8))
       T1 = 0.0
       stop
       end
