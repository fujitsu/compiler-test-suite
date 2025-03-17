module mod
  type data
    integer arr(10)
  end type
contains
  subroutine ext_sub01()
    type(data) :: dat

    do i=1,10
      dat%arr(i) = 15
      call mvbits(i, 0, 15, dat%arr(i), 0)
    end do
    if (ext_check(dat%arr)) stop "NG 01"
  end subroutine

  subroutine ext_sub02()
    type(data) :: dat

    do i=1,10
      dat%arr(i) = 5
      call mvbits(i, 0, 0, dat%arr(i), 0)
    end do
    if (ext_check(dat%arr)) stop "NG 02"
  contains
    subroutine mvbits(p1, p2, p3, p4, p5)
      integer ,intent(in) :: p1
      integer ,intent(in) :: p2
      integer ,intent(in) :: p3
      integer ,intent(out) :: p4
      integer ,intent(in) :: p5

      p4 = p1 + p2 + p3 + p5

    end subroutine
  end subroutine

  function ext_check(Parr)
    integer ,intent(in) :: Parr(10)
    logical :: ext_check
    logical :: ret
    if (all(Parr == (/1,2,3,4,5,6,7,8,9,10/))) then
      ret = .false.
    else
      ret = .true.
    end if
    ext_check = ret
  end function

end module

program main
  use mod

  call ext_sub01
  call ext_sub02
 
  print *,"pass"
end
