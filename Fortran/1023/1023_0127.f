      module m_1
      contains
       function pointer_fun_entry(p_arg1)
       integer,pointer::p_arg1
       allocate(p_arg1)
       p_arg1=2
       print *,p_arg1
       end function pointer_fun_entry
      end module m_1

      use m_1
      integer,pointer ::s_p
      call x(pointer_fun_entry(s_p))
      end
      subroutine x(r)
      end
