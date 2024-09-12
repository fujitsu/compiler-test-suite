subroutine gsub ()
  type tpga
     complex(kind=4)         :: ca = (1.0,2.0)
     complex(kind=8)         :: cb
     character(len=3,kind=1) :: sa(2) = 'abc'
  end type tpga
  type tpgb
     character(len=3,kind=1) :: ca(2) = 'def'
     logical(kind=1)         :: la(3) = (/.FALSE.,.TRUE.,.FALSE./)
     integer(kind=4)         :: ia(3) = (/6,2,2/)
  end type tpgb
  integer tmp
  type(tpga) ta(2)
  type(tpgb) tb

  print *, "gsub"
  print *, ta(1)
  print *, ta(2)
  print *, tb
  call subsub
  tmp = subfunc(30)
  print *, tmp + 10

  contains
    function subfunc(arg1)
      type lt
         integer :: xx = 50
      end type lt
      integer subfunc, arg1

      subfunc = arg1 * 50

    end function subfunc

    subroutine subsub
      type tss
      end type tss
      type(tss) :: empty
      type(tpgb) :: ta = tpgb('xyz', .TRUE., 6)
      integer :: ii = 30

      print *, empty
      print *, ta
      print *, ii
    end subroutine subsub

end subroutine gsub

program pmain
  type tp1
     integer(kind=4) :: ma = 30
     real   (kind=8) :: ra = 1.0
     integer(kind=1) :: mb(3) = 40
  end type tp1
  type(tp1) aa

  print *, "pmain"
  print *, aa

  call gsub
end
