 implicit none
   character::  g3,p1
   g3='1'
   p1='1'
  block
   integer::  g3,p1
   g3=1
   p1=1
   if (g3/=1) print *,1001
   if (p1/=1) print *,1002
  end block
   if (g3/='1') print *,1011
   if (p1/='1') print *,1012
print *,'sngg345p : pass'
end
