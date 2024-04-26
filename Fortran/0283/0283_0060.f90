program main
character(len=5)::ch
ch='xxxxx'
associate(a=>ch(:))
 if(a/='xxxxx') print*,'101'
 a='abc'
 if(a/='abc') print*,'102'
end associate

print*,'pass'
end
