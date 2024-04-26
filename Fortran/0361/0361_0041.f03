  implicit none
  complex(4)  :: cmp01
  complex(8)  :: cmp02
  complex(16) :: cmp03
  cmp01 = 1
  cmp02 = 1
  cmp03 = 1
  call sub01(cmp01,cmp02,cmp03)
  print *,"pass"
contains
  subroutine sub01(p01,p02,p03)
    complex(4)  :: p01
    complex(8)  :: p02
    complex(16) :: p03
    value :: p01,p02,p03
    p01 = p01
    p02 = p02
    p03 = p03
    return
  end subroutine
end program
