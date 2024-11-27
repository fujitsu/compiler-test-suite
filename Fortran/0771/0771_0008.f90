integer function s(a)
  procedure(),pointer :: a=>null()
end 

integer function s2(a)
  procedure() :: a=>null()
  pointer a
end 

integer function s3(a)
  pointer a
  procedure() :: a=>null()
end

integer function s4(a)
  intent(inout) :: a
  procedure(),pointer :: a=>null()
end 

integer function s5(a)
  pointer a
  intent(inout) :: a
  procedure() :: a=>null()
end

integer function s6(a)
  procedure() :: a=>null()
  intent(inout) :: a
  pointer a
end

end
