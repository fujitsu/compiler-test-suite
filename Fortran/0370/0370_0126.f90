  
  integer(kind=1),target :: ia(9) = (/1,2,3,4,5,6,7,8,9/)
  integer(kind=2),target :: ib(9) = (/9,8,7,6,5,4,3,2,1/)
  integer(kind=4),target :: ic(9) = (/10,20,30,40,50,60,70,80,90/)
  integer(kind=8),target :: id(9) = (/11,21,31,41,51,61,71,81,91/)
  real(kind=4),target  :: ra(8) = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0/)
  real(kind=8),target  :: rb(8) = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0/)
  real(kind=16),target :: rc(8) = (/10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0/)
  complex(kind=4),target  :: xa(6) = (/(1.0,10.0),(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0),(6.0,60.0)/)
  complex(kind=8),target  :: xb(5) = (/(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0),(6.0,60.0)/)
  complex(kind=16),target :: xc(4) = (/(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0)/)
  logical(kind=1),target :: la(8) = (/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./)
  logical(kind=2),target :: lb(8) = (/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./)
  logical(kind=4),target :: lc(5) = (/.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE./)
  logical(kind=8),target :: ld(5) = (/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./)
  character(kind=1),target :: ca(11) = (/'a','b','c','d','e','f','g','h','x','y','z'/)
  character(kind=1,len=3),target :: sa(7) = (/'abc','def','ghi','jkl','mno','pqr','stu'/)

  integer(kind=1),pointer :: pia(:) => ia(1:9:2)
  integer(kind=2),pointer :: pib(:) => ib(1:9:3)
  integer(kind=4),pointer :: pic(:) => ic(8:2:-2)
  integer(kind=8),pointer :: pid(:) => id(5:9:1)
  real(kind=4),pointer  :: pra(:) => ra(1:8:2)
  real(kind=8),pointer  :: prb(:) => rb(7:2:-1)
  real(kind=16),pointer :: prc(:) => rc(4:7:2)
  complex(kind=4),pointer  :: pxa(:) => xa(3:6:2)
  complex(kind=8),pointer  :: pxb(:) => xb(2:5:1)
  complex(kind=16),pointer :: pxc(:) => xc(3:1:-2)
  logical(kind=1),pointer :: pla(:) => la(8:2:-3)
  logical(kind=2),pointer :: plb(:) => lb(1:8:2)
  logical(kind=4),pointer :: plc(:) => lc(1:3:1)
  logical(kind=8),pointer :: pld(:) => ld(2:4:1)
  character(kind=1),pointer :: pca(:) => ca(10:1:-1)
  character(kind=1,len=3),pointer :: psa(:) => sa(1:7:2)

  print *, pia
  print *, pib
  print *, pic
  print *, pid
  print *, pra
  print *, prb
  print *, prc
  print *, pxa
  print *, pxb
  print *, pxc
  print *, pla
  print *, plb
  print *, plc
  print *, pld
  print *, pca
  print *, psa
end program