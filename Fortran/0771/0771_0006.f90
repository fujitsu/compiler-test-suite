function s()
  procedure(),pointer :: s,ss=>null()
  entry ss()
end 

function s2()
  procedure() :: s2,ss2=>null()
  entry ss2()
  pointer s2,ss2
end 

function s3()
  pointer s3,ss3
  entry ss3()
  procedure() :: s3,ss3=>null()
end

function s4()
  entry ss4()
  procedure(),pointer :: s4,ss4=>null()
end 

function s5()
  entry ss5()
  pointer s5,ss5
  procedure() :: s5,ss5=>null()
end

function s6()
  entry ss6()
  procedure() :: s6,ss6=>null()
  pointer s6,ss6
end

function s7()
  procedure() :: s7,ss7=>null()
  pointer s7,ss7
  entry ss7()
end

function s8()
  procedure() :: s8,ss8=>null()
  entry ss8()
  pointer s8,ss8
end
end
