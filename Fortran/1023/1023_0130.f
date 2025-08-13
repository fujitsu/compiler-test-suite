      call s1 
      print *,'pass'
      end
      module m_1
      contains
       function pointer_fun_entry(p_arg1,p_arg2) result(fun_r)
       dimension p_arg2(:)
       integer,pointer::fun_r,p_arg1,p_arg2
       allocate(fun_r,p_arg1,p_arg2(2))
       fun_r=1
       p_arg1=2
       p_arg2(1)=3
       p_arg2(2)=4
       print *,p_arg1
       print *,p_arg2
       end function pointer_fun_entry
      end module m_1
      subroutine s1
      use m_1
      integer,pointer ::s_p,a_p(:)
      call sub( pointer_fun_entry(s_p,a_p))
      end
      subroutine sub(k)
      write(2,*) k
      end
      
