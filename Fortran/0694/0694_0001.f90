  implicit none
  complex(4)  :: cmp01
  complex(8)  :: cmp02
  cmp01 = 1
  cmp02 = 1
  call sub01(cmp01,cmp02)
  print *,"pass"
contains
  subroutine sub01(p01,p02)
    complex(4)  :: p01
    complex(8)  :: p02
    value :: p01,p02
    p01 = p01
    p02 = p02
    return
  end subroutine
end program
