      module m_1
      parameter (i=1)
      parameter (j=2)
      end module m_1

      subroutine s1()
      use m_1
      print *,i,j
      end
      call s1()
      end
