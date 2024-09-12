subroutine sub
  integer(kind=4),target :: a0 = 23

  type ty0
     integer(kind=8) :: s1(2) = 5
     integer(kind=4),pointer :: s2p=> a0
  end type ty0
  type ty1
     integer(kind=4) :: t1 = 1
     type(ty0)       :: str0
     type(ty0)       :: stra
  endtype ty1
  type(ty1),save,target :: str1

  type(ty1),pointer :: p0
  type(ty0),pointer :: p1
  type(ty0),pointer :: p2
  integer(kind=4),pointer :: p3
  data p0 /str1/
  data p1 /str1%str0/
  data p2 /str1%stra/
  data p3 /str1%t1/
  
  integer(kind=8),pointer :: pa
  integer(kind=8),pointer :: pb
  data pa /str1%str0%s1(1)/
  data pb /str1%str0%s1(2)/
  
  integer(kind=8),pointer :: pl
  integer(kind=8),pointer :: pm
  data pl /str1%stra%s1(1)/
  data pm /str1%stra%s1(2)/
  
  print *,p0%str0%s1,p0%str0%s2p
  print *,p1%s1, p1%s2p
  print *,p2%s1, p2%s2p
  print *,p3

  print *,pa, pb
  print *,pl, pm

  print *,str1%str0%s2p
  print *,str1%stra%s2p
end subroutine sub

call sub
end
