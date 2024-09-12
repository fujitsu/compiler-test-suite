  integer(kind=1),target :: t1 = 1
  integer(kind=2),target :: t2 = 2
  integer(kind=4),target :: t4 = 4
  integer(kind=8),target :: t8 = 8
  integer(kind=1),target,dimension(3) :: ta1 = (/1,2,3/)
  integer(kind=2),target,dimension(3) :: ta2 = (/4,5,6/)
  integer(kind=4),target,dimension(3) :: ta4 = (/7,8,9/)
  integer(kind=8),target,dimension(3) :: ta8 = (/5,4,3/)
  integer(kind=1),target,dimension(2,3) :: tm1 = reshape((/1,2,3,4,5,6/),(/2,3/))
  integer(kind=2),target,dimension(2,3) :: tm2 = reshape((/7,8,9,10,11,12/),(/2,3/))
  integer(kind=4),target,dimension(2,3) :: tm4 = reshape((/13,14,15,16,17,18/),(/2,3/))
  integer(kind=8),target,dimension(2,3) :: tm8 = reshape((/21,22,23,24,25,26/),(/2,3/))

  integer(kind=1),pointer :: ps1 => t1
  integer(kind=2),pointer :: ps2 => t2
  integer(kind=4),pointer :: ps4 => t4
  integer(kind=8),pointer :: ps8 => t8
  integer(kind=1),pointer,dimension(:) :: pa1 => ta1
  integer(kind=2),pointer,dimension(:) :: pa2 => ta2
  integer(kind=4),pointer,dimension(:) :: pa4 => ta4
  integer(kind=8),pointer,dimension(:) :: pa8 => ta8
  integer(kind=1),pointer,dimension(:,:) :: pm1 => tm1
  integer(kind=2),pointer,dimension(:,:) :: pm2 => tm2
  integer(kind=4),pointer,dimension(:,:) :: pm4 => tm4
  integer(kind=8),pointer,dimension(:,:) :: pm8 => tm8

  print *, ps1
  print *, ps2
  print *, ps4
  print *, ps8

  print *, pa1
  print *, pa2
  print *, pa4
  print *, pa8

  print *, pm1
  print *, pm2
  print *, pm4
  print *, pm8

end program
