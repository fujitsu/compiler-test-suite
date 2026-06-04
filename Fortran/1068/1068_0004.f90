     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
contains
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var(:,:,:)
     class(base), allocatable :: vas(:,:,:)
     class(base), allocatable :: vat(:,:,:)
     class(base), allocatable :: vau(:,:,:)
     end
      call s1
     print *,'sngg762q : pass'
     end 
