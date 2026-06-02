     module mod
       type :: base
         integer:: kbase
       end type base
       type, extends(base) :: ext
         integer:: kext                       ! 3-1)
         integer,pointer:: p            ! 3-1)
         character(2),allocatable::name         ! 3-2)
       end type ext
     contains
     subroutine ss1()
     class(base),allocatable :: var_aloc(:,:)        ! 1-1-2)
     class(base),allocatable :: var_mold(:,:,:,:)     ! 1-1-3)
     allocate(ext::var_mold(2,3,4,5))                    ! 2)
     allocate(var_aloc(5,4), mold=var_mold) ! 1-1-1), 1-1-2), 1-1-3), 2)
     do n=1,5
     do k=1,4
     call ref(var_aloc(n,k))
     end do
     end do
     end subroutine

     subroutine ref(d)
     class(base):: d
     select type(d)
     type is(ext)
       allocate(d%name)                        ! 4-4)
     end select
     end subroutine
     end module

     subroutine sample
     use mod

        call ss1()

     end subroutine


        call set_dummy
        call sample
     print *,'sngg554t : pass'
     end


     subroutine set_dummy
     integer,allocatable::a(:)
     allocate(a(100),source=-1)
     write(51,*) a(1)
     end
