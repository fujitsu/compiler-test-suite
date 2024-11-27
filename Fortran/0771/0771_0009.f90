function s()
  procedure(),pointer :: s=>null()
end 

function s2()
  procedure() :: s2=>null()
  pointer s2
end 

function s3()
  pointer s3
  procedure() :: s3=>null()
end

function f4() result(s4)
  procedure(),pointer :: s4=>null()
end 

function f5() result(s5)
  pointer s5
  procedure() :: s5=>null()
end

function f6() result(s6)
  procedure() :: s6=>null()
  pointer s6
end

end
