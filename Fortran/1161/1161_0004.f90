associate (isrc =>10)
 block
  character (len=isrc) :: cSum
  cSum='1234567890'
  if (isrc.ne.10) print *,'ng1 : ',isrc
  if (len(cSum).ne.10) print *,'ng2 : ',len(cSum)
  if (cSum/='1234567890') print *,101,cSum
 end block
end associate
print *,'pass'
end
