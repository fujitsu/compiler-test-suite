subroutine s(a,b,c)
  procedure(),pointer :: a=>null()
  procedure() :: b=>null()
  pointer b,c
  procedure() :: c=>null()
end

integer function f(a,b,c)
  procedure(),pointer :: a=>null()
  procedure() :: b=>null()
  pointer b,c
  procedure() :: c=>null()
end
end
