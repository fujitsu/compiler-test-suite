  module allocatable_array
    integer,allocatable,dimension(:),save :: ms3,ms0
    integer,allocatable,dimension(:)      :: mn3,mn0
  end module

  program main

    integer :: error = 0

    call use_associated_allocate_check(error)
    call use_associated_allocate_check(error)
    call use_associated_allocate_check(error)

    call local_allocate_check(error)
    call local_allocate_check(error)
    call local_allocate_check(error)

    call host_associated_allocate_check(error)

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  subroutine use_associated_allocate_check(error)

    use allocatable_array

    integer,save :: check=0
    integer :: error

    selectcase (check)
      case (0)
        if (allocated(ms3)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (allocated(ms0)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (allocated(mn3)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (allocated(mn0)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        allocate (ms3(3),ms0(1:0))
        allocate (mn3(3),mn0(1:0))
        check = check+1 
      case (1)
        if (.not.allocated(ms3)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (.not.allocated(ms0)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (.not.allocated(mn3)) then
          allocate(mn3(3))
        end if
        if (.not.allocated(mn0)) then
          allocate(mn0(1:0))
        end if
        if (size(ms3) /= size(mn3) .or. size(ms3) /= 3) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (size(ms0) /= size(mn0) .or. size(ms0) /= 0) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        deallocate(ms3,ms0,mn3,mn0)
        check = check+1
      case (2)
        if (allocated(ms3)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (allocated(ms0)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (allocated(mn3)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (allocated(mn0)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
    end select

  end subroutine

  subroutine local_allocate_check(error)

    integer,allocatable,dimension(:),save :: ls3,ls0
    integer,allocatable,dimension(:)      :: ln3,ln0

    integer,save :: check=0
    integer :: error

    selectcase (check)
      case (0)
        if (allocated(ls3)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (allocated(ls0)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (allocated(ln3)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (allocated(ln0)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        allocate (ls3(3),ls0(1:0))
        allocate (ln3(3),ln0(1:0))
        check = check+1 
      case (1)
        if (.not.allocated(ls3)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        if (.not.allocated(ls0)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        if (allocated(ln3)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        allocate(ln3(3))
        if (allocated(ln0)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        allocate(ln0(1:0))
        if (size(ls3) /= size(ln3) .or. size(ls3) /= 3) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        if (size(ls0) /= size(ln0) .or. size(ls0) /= 0) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        deallocate(ls3,ls0,ln3,ln0)
        check = check+1
      case (2)
        if (allocated(ls3)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (allocated(ls0)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (allocated(ln3)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (allocated(ln0)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
    end select

  end subroutine

  subroutine host_associated_allocate_check(error)

    integer,allocatable,dimension(:),save :: hs3,hs0
    integer,allocatable,dimension(:)      :: hn3,hn0

    integer :: check
    integer :: error

    check = 0

    call internal_host_associated_allocate_check()
    call internal_host_associated_allocate_check()
    call internal_host_associated_allocate_check()
    deallocate(hs3,hs0,hn3,hn0)
    call internal_host_associated_allocate_check()

    contains

    subroutine internal_host_associated_allocate_check()
      selectcase (check)
        case (0)
          if (allocated(hs3)) then
            print *, " +++ error : item 7 +++ "
            error = error +1 ;
          end if
          if (allocated(hs0)) then
            print *, " +++ error : item 7 +++ "
            error = error +1 ;
          end if
          if (allocated(hn3)) then
            print *, " +++ error : item 7 +++ "
            error = error +1 ;
          end if
          if (allocated(hn0)) then
            print *, " +++ error : item 7 +++ "
            error = error +1 ;
          end if
          allocate (hs3(3),hs0(1:0))
          allocate (hn3(3),hn0(1:0))
          check = check+1 
        case (1)
          if (.not.allocated(hs3)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.allocated(hs0)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.allocated(hn3)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.allocated(hn0)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (size(hs3) /= size(hn3) .or. size(hs3) /= 3) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (size(hs0) /= size(hn0) .or. size(hs0) /= 0) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          deallocate(hs3,hs0,hn3,hn0)
          check = check+1
        case (2)
          if (allocated(hs3)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (allocated(hs0)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (allocated(hn3)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (allocated(hn0)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          allocate (hs3(3),hs0(1:0))
          allocate (hn3(3),hn0(1:0))
          check = check+1
        case (3)
          if (allocated(hs3)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (allocated(hs0)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (allocated(hn3)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (allocated(hn0)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
      end select

    end subroutine

  end subroutine
