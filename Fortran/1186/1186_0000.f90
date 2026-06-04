 implicit none
  block
   real   ::  n11111,n11125
   n11111=1.1
   n11125=1.1
   if (n11111/=1.1) print *,1011
   if (n11125/=1.1) print *,1021
  end block
print *,'sngg323p : pass'
end
