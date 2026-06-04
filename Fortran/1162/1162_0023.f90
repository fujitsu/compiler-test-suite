integer::k,kk
k=1
kk=1
block
  volatile ::k
  asynchronous::kk
  if (k/=1)print *,1001
  if (kk/=1)print *,1002
k=2
kk=2
end block
  if (k/=2)print *,10011
  if (kk/=2)print *,10021
print *,'sngg641n : pass'
end
