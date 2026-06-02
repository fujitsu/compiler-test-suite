!implicit none
i2=2
associate( k=> i2)
 block
save
  character(k),target :: tt*(2)='aa'     ! err
  character(k),pointer ::arr*(2) => tt    ! err
tt='ab'
   write(21,*) arr
  if (arr/='ab') print *,700,arr
 end block
end associate
print *,'snfm0023 : pass'
end
