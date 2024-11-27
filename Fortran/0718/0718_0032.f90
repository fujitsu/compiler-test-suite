type :: str1
  integer :: iii
end type
type,bind(c) :: str
  type(str1) :: s1
end type
end
