subroutine s(a)
  procedure(),pointer :: a=>null()
end 

subroutine s2(a)
  procedure() :: a=>null()
  pointer a
end 

subroutine s3(a)
  pointer a
  procedure() :: a=>null()
end

subroutine s4(a)
  intent(inout) :: a
  procedure(),pointer :: a=>null()
end 

subroutine s5(a)
  pointer a
  intent(inout) :: a
  procedure() :: a=>null()
end

subroutine s6(a)
  procedure() :: a=>null()
  intent(inout) :: a
  pointer a
end

end
