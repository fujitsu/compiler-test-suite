integer,target::t1
integer,pointer::p1
  data p1 /t1/
  common /abc/ p1
print*,"pass"
end

