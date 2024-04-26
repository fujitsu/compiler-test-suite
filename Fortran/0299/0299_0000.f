      module array_data
      logical*1,   target,dimension(10)::l1
      end module array_data

      module pointer_data
      type l1p_t 
        logical*1,   pointer,dimension(:)::l1p
      end type l1p_t
      type l1p_tt 
        type (l1p_tt),pointer             ::l1p_next
        type (l1p_t)                     ::l1p
      end type l1p_tt 
      type (l1p_tt),target::l1p(10)
      end module pointer_data

      subroutine sub_print
      use array_data
      use pointer_data
      type (l1p_tt),pointer::l1p_w
      l1p_w=>l1p(1)
      do i=1,9;   l1p_w=l1p_w%l1p_next ; enddo
      print *,l1p_w%l1p%l1p
      end subroutine sub_print

      print *,'pass'
      stop
      end
