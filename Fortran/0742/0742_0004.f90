module E20_M
  implicit none
  type :: BOX_Type
    integer xx
    type (Node_Type), pointer :: Next_NP
  end type BOX_Type
  type:: Node_Type
    character (len = 12) :: Info
    type (BOX_Type) :: BOX
  end type Node_Type
  type :: Queue_Type
    integer xx
    type (BOX_Type) :: Root_B
    type (BOX_Type), pointer :: Tail_BP
  end type Queue_Type
contains
  subroutine Create_Queue( Arg_Q )
    type (Queue_Type), target, intent(in out) :: Arg_Q
    nullify( Arg_Q % Root_B % Next_NP )
    Arg_Q % Tail_BP => Arg_Q % Root_B
  end subroutine Create_Queue
  subroutine Destroy_Queue( Arg_Q )
    type (Queue_Type), intent(in out) :: Arg_Q
    character (len = 12) :: Info
      call Dequeue( Arg_Q, Info )
      write (11, *) " Left on Queue: ", Info
  end subroutine Destroy_Queue
  subroutine Enqueue( Arg_Q, Item )
    type (Queue_Type), intent(in out) :: Arg_Q
    character (len = *), intent(in) :: Item
    type (Node_Type), pointer :: Temp_NP
    allocate( Temp_NP )
    Temp_NP % Info = Item
    nullify( Temp_NP % BOX % Next_NP )
    Arg_Q % Tail_BP % Next_NP => Temp_NP
    Arg_Q % Tail_BP => Temp_NP % BOX
    nullify( Temp_NP )
  end subroutine Enqueue
  subroutine Dequeue( Arg_Q, Item )
    type (Queue_Type), target, intent(in out) :: Arg_Q
    character (len = *), intent(out) :: Item
    type (Node_Type), pointer :: Temp_NP
      Temp_NP => Arg_Q % Root_B % Next_NP
      Item = Temp_NP % Info
      Arg_Q % Root_B = Temp_NP % BOX
      call dummy
      deallocate( Temp_NP )
      if (Is_Empty( Arg_Q )) then
        Arg_Q % Tail_BP => Arg_Q % Root_B
      end if
  end subroutine Dequeue
  function Is_Empty( Arg_Q ) result ( X )
    type (Queue_Type), intent(in) :: Arg_Q
    logical :: X
    X = (.not. associated (Arg_Q % Root_B % Next_NP))
  end function Is_Empty
  function Is_Full( Arg_Q ) result ( X )
    type (Queue_Type), intent(in) :: Arg_Q
    logical :: X
    X = (.not. associated (Arg_Q % Root_B % Next_NP))
    X = .false.
  end function Is_Full
end module E20_M

  program main
    use E20_M
    implicit none
    integer :: Op
    character (len = 12) :: Item
    type (Queue_Type) :: Queue
    call Create_Queue( Queue )
    call writex
    do
      read (7, *) Op
      select case (Op)
      case (0)
        exit
      case (1)
          read (7, *) Item
          call Enqueue( Queue, Item )
          write (11, *) " Enqueued: ", Item
      end select
    end do
     call Destroy_Queue( Queue )
print *,'pass'
   end program main
subroutine dummy
end
subroutine writex
write(7,*) '1'
write(7,*) 'a'
write(7,*) '0'
rewind 7
end
