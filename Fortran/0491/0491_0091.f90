   module m1
    type  ndxgroups
       integer::y
    end type
     type, public :: IndexFile
           type (ndxgroups), allocatable :: group(:)
           logical :: group_warning = .true.
       end type IndexFile
     type coord
        real(8), allocatable :: xyz(:,:)
     end type coord
type method_base
  integer::x1
end type
     type,extends(method_base) :: method_grp
      type(IndexFile) :: ndx
      type(coord), allocatable :: grp(:)
     end type method_grp
end
print *,'pass'
end
