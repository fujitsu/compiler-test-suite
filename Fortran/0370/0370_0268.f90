
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/2,3,4/)
     integer :: t3 = 5
  end type ty1
  type(ty1),target,dimension(9) :: str1
  integer(kind=2),target :: t1 = 66
  integer(kind=2),target :: t2 = 77
  
  type tym
     integer(kind=2),pointer :: p0
     integer(kind=2),pointer :: pa0(:)
     integer(kind=2),pointer :: pm0(:,:)

     integer(kind=2),pointer :: p1=>t1     

     type(ty1),pointer :: pt0
     type(ty1),pointer :: pta0(:)
     type(ty1),pointer :: ptm0(:,:)

     type(ty1),pointer :: pt1=>str1(9)

     integer(kind=2),pointer :: pn0 => NULL()
     integer(kind=2),pointer :: pna0(:) => NULL()
     integer(kind=2),pointer :: pnm0(:,:) => NULL()
     type(ty1),pointer :: pnt0 => NULL()
     type(ty1),pointer :: pnta0(:) => NULL()
     type(ty1),pointer :: pntm0(:,:) => NULL()

     integer(kind=2),pointer :: p2=>t2
  end type tym
  type(tym) :: sm

  str1(9)%t2(2)=39
  
  print *, sm%p1
  print *, sm%pt1  
  print *, sm%p2

  sm%p0=>t1
  allocate (sm%pa0(3))
  sm%pa0=3
  print *, sm%p0
  print *, sm%pa0

  sm%pta0=>str1
  allocate (sm%pntm0(2,2))
  print *, sm%pta0
  print *, sm%pntm0
end program
