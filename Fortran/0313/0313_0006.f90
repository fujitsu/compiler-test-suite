      integer*8,allocatable,target ,dimension(:,:)::array_d2
      integer*8,allocatable,target ,dimension(:,:)::array_d2_1
      integer*8 ii(4,4), jj(4,4)
      data ii/-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8/
      data jj/7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6,-7,-8/
      allocate(array_d2  (4,4))
      allocate(array_d2_1(4,4))
      array_d2 = jj
      array_d2_1 = ii
      do i=1,4
        where(array_d2 <  reshape(array_d2_1,(/4,4/)))
          array_d2=array_d2/array_d2-array_d2
          array_d2=array_d2*array_d2+array_d2
        else where
          array_d2_1=array_d2*reshape(array_d2_1,(/4,4/))
          array_d2_1=array_d2*reshape(array_d2_1,(/4,4/))
        end where

        where(array_d2 >  reshape(array_d2_1,(/4,4/)))
        else where
          array_d2_1=array_d2*reshape(array_d2_1,(/4,4/))
        end where
      end do
      print *,array_d2_1
      end
