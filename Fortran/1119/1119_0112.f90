complex,pointer:: ppp(:)
allocate(ppp(2))
ppp=-1
i=0
associate(ppp=>i)
  !$omp parallel reduction(+:i)
  i=i+1
  ppp=ppp+2
  !$omp end parallel
  if(ppp/=i) print *,'err'
end associate
print *,'pass'
end program
