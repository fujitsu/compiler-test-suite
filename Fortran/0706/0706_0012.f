      call s1
      print *,'pass'
      end
      module m_1
       contains
         function ary_a(m) result(ary_r)
         integer,dimension(m,m,m)::ary_r
         end function ary_a
      end module m_1
      subroutine s1
      use m_1
      end 
