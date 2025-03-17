       real, dimension(:,:,:), allocatable :: T6
       structure /st/
         integer*2                  :: mix_cells_4_str
       endstructure
       record /st/ str
       str.mix_cells_4_str = 227
       allocate (T6(1:str.mix_cells_4_str,3,8))
       T6 = 0.0
       stop
       end
