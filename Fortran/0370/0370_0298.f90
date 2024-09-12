
  implicit none
  integer,target :: ta(5) = (/9,8,7,6,5/)
  integer,target :: tb(0)
  integer,target :: tx(1,3) = reshape((/1,2,3/),(/1,3/))
  integer,target :: ty(0,0)
  integer,target :: tz(0,3) = reshape((/1,2,3/),(/0,3/))
  type ty1
     sequence
     integer,pointer,dimension(:) :: p1 =>ta
     integer,pointer,dimension(:) :: p2 =>tb
     integer,pointer,dimension(:,:) :: p3 =>tx
     integer,pointer,dimension(:,:) :: p4 =>ty
     integer,pointer,dimension(:,:) :: p5 =>tz
  end type ty1
  type (ty1) :: str
  
  print *, ta
  print *, tb
  print *, tx
  print *, ty
  print *, tz

  print *, str%p1
  print *, str%p2
  print *, str%p3
  print *, str%p4
  print *, str%p5
end program
