  module pointer_array
    integer,pointer,dimension(:),save :: ms3,ms0
    integer,pointer,dimension(:)      :: mn3,mn0
  end module

  program main

    integer :: error = 0

    call use_associated_pointer_check(error)
    call use_associated_pointer_check(error)
    call use_associated_pointer_check(error)

    call local_pointer_check(error)
    call local_pointer_check(error)
    call local_pointer_check(error)

    call host_associated_pointer_check(error)

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  subroutine use_associated_pointer_check(error)

    use pointer_array

    integer,save :: check=0
    integer :: error

    selectcase (check)
      case (0)
	nullify(ms3,ms0,mn3,mn0)
        if (associated(ms3)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (associated(ms0)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (associated(mn3)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        if (associated(mn0)) then
          print *, " +++ error : item 1 +++ "
          error = error +1 ;
        end if
        allocate (ms3(3),ms0(1:0))
        allocate (mn3(3),mn0(1:0))
        check = check+1 
      case (1)
        if (.not.associated(ms3)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (.not.associated(ms0)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (.not.associated(mn3)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
        end if
        if (.not.associated(mn0)) then
          print *, " +++ error : item 2 +++ "
          error = error +1 ;
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
        if (associated(ms3)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (associated(ms0)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (associated(mn3)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
        if (associated(mn0)) then
          print *, " +++ error : item 3 +++ "
          error = error +1 ;
        end if
    end select

  end subroutine

  subroutine local_pointer_check(error)

    integer,pointer,dimension(:),save :: ls3,ls0
    integer,pointer,dimension(:)      :: ln3=>null(),ln0=>null()

    integer,save :: check=0
    integer :: error

    selectcase (check)
      case (0)
        nullify(ls3,ls0,ln3,ln0)
        if (associated(ls3)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (associated(ls0)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (associated(ln3)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        if (associated(ln0)) then
          print *, " +++ error : item 4 +++ "
          error = error +1 ;
        end if
        allocate (ls3(3),ls0(1:0))
        allocate (ln3(3),ln0(1:0))
        check = check+1 
      case (1)
        if (.not.associated(ls3)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        if (.not.associated(ls0)) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        end if
        allocate(ln3(3))
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
        if (associated(ls3)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (associated(ls0)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (associated(ln3)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
        if (associated(ln0)) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        end if
    end select

  end subroutine

  subroutine host_associated_pointer_check(error)

    integer,pointer,dimension(:),save :: hs3,hs0
    integer,pointer,dimension(:)      :: hn3,hn0

    integer :: check
    integer :: error

    check = 0
    hs3=>null()
    hs0=>null()
    hn3=>null()
    hn0=>null()
    call internal_host_associated_pointer_check()
    call internal_host_associated_pointer_check()
    call internal_host_associated_pointer_check()
    deallocate(hs3,hs0,hn3,hn0)
    call internal_host_associated_pointer_check()

    contains

    subroutine internal_host_associated_pointer_check()
      selectcase (check)
        case (0)
          if (associated(hs3)) then
            print *, " +++ error : item 7-1 +++ "
            error = error +1 ;
          end if
          if (associated(hs0)) then
            print *, " +++ error : item 7-2 +++ "
            error = error +1 ;
          end if
          if (associated(hn3)) then
            print *, " +++ error : item 7-3 +++ "
            error = error +1 ;
          end if
          if (associated(hn0)) then
            print *, " +++ error : item 7-4 +++ "
            error = error +1 ;
          end if
          allocate (hs3(3),hs0(1:0))
          allocate (hn3(3),hn0(1:0))
          check = check+1 
        case (1)
          if (.not.associated(hs3)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.associated(hs0)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.associated(hn3)) then
            print *, " +++ error : item 8 +++ "
            error = error +1 ;
          end if
          if (.not.associated(hn0)) then
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
          if (associated(hs3)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (associated(hs0)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (associated(hn3)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          if (associated(hn0)) then
            print *, " +++ error : item 9 +++ "
            error = error +1 ;
          end if
          allocate (hs3(3),hs0(1:0))
          allocate (hn3(3),hn0(1:0))
          check = check+1
        case (3)
          if (associated(hs3)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (associated(hs0)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (associated(hn3)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
          if (associated(hn0)) then
            print *, " +++ error : item 10 +++ "
            error = error +1 ;
          end if
      end select

    end subroutine

  end subroutine
