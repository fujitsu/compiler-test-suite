
program xyz
    integer,target :: t1 = 5
    integer,target :: t2 = 88
    integer,target :: ta(2) = (/6,7/)
  type ty1
     logical :: s0 = .TRUE.
     integer,pointer :: p1 =>t1
     integer,pointer :: p2(:) =>ta
  end type ty1
  type (ty1) :: str

  str%s0=.FALSE.
  t1=10
  ta=(/20,30/)
  
  block
    integer,target :: t1 = 5
    integer,target :: ta(2) = (/6,7/)
    type ty1
       logical :: s0 = .TRUE.
       integer,pointer :: p1 =>t1
       integer,pointer :: p2(:) =>ta
       integer,pointer :: p3 =>t2
    end type ty1
    type (ty1) :: str
    print *, str%s0,str%p1,str%p2,str%p3
  end block

  print *, str%s0,str%p1,str%p2
end program
