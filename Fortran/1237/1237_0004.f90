implicit none
save
associate( k=> 2)
 block
  character(1),dimension(k) ::arr(2)='a'
  arr(1)='1'
  if (arr(2).ne.'a') print *,'0001'
 end block
end associate
print *,'snfm0022 : pass'
end

