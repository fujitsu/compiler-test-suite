       program test
       common /com/ mix_cells_2_com,mix_cells_4_com
       real, dimension(:,:,:), allocatable :: T1
       real, dimension(:,:,:), allocatable :: T2
       real, dimension(:,:,:), allocatable :: T3
       real, dimension(:,:,:), allocatable :: T4
       integer*2                  :: mix_cells_2
       integer*4                  :: mix_cells_4
       integer*2                  :: mix_cells_2_com
       integer*4                  :: mix_cells_4_com
       mix_cells_2 = 227
       mix_cells_4 = 227
       mix_cells_2_com = 227
       mix_cells_4_com = 227
       allocate (T1(1:mix_cells_2,3,8))
       allocate (T2(1:mix_cells_4,3,8))
       allocate (T3(1:mix_cells_2_com,3,8))
       allocate (T4(1:mix_cells_4_com,3,8))
       T1 = 0.0
       stop
       end
