module m3
namelist /nam1/ c1
  codimension c1[*]
  codimension c2[*]
namelist /nam2/ c2
end
use m3
print *,'pass'
end



