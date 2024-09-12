      call s1
      print *,'pass'
      end

      module m_1
      contains
      function   ss1(i)  result(rs1)
      complex (kind=4),pointer::rs1
      allocate (rs1)
      rs1=cmplx(i,i+1)
      write(6,*) rs1
      call chk(rs1,i)
      end function
      end module   

      subroutine chk(rs,j)
      complex    :: rs
      if (rs/=cmplx(j,j+1)) call sub(rs,cmplx(j,j+1))
      end subroutine

      subroutine s1
      use m_1
      do k=2,5
      call chk (ss1(k), k )
      end do
      end

      subroutine sub(aa,bb)
      write(6,*) ' chk=', aa,bb
      return
      end
