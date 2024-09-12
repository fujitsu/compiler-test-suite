  type tp0
     integer(kind=1) :: ma = 10_8
     integer(kind=2) :: mb = 20_4
     integer(kind=4) :: mc = 30_2
     integer(kind=8) :: md = 40_1

     real(kind=4)  :: ra = -10.0_16
     real(kind=8)  :: rb = -20.0_8
     real(kind=16) :: rc = -30.0_4

     complex(kind=4)  :: ca = (9.0_16, 8.0_16)
     complex(kind=8)  :: cb = (7.0_4, 6.0_4)
     complex(kind=16) :: cc = (5.0_8, 4.0_8)

     logical(kind=1) :: la = .false._8
     logical(kind=2) :: lb = .true._4
     logical(kind=4) :: lc = .false._2
     logical(kind=8) :: ld = .true._1
  end type tp0

  type(tp0) :: tt

  print *, tt

end
