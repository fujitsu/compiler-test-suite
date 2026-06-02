complex,pointer:: ppp(:)
allocate(ppp(2))
ppp=-1
i=0
associate(ppp=>i)
  !$omp simd reduction(+:i)
  do k=1,2
     i=i+1
  ppp=ppp+2
enddo
  !$omp end simd
  if(ppp/=i) print *,'err'
end associate
print *,'pass'
end program
