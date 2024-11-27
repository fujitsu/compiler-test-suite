subroutine s1
  type t(a,b)
    integer, kind :: a
    integer, len :: b
    character(*,a) :: c1*2="12"
  end type
end
subroutine s2
  type t2
    character(*,1) :: c1*2="12"
  end type
end
end
