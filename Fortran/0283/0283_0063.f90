program main
character(len=5)::ch(3)
ch='xxxxx'
associate(a=>ch(::2))
 if(all(a/='xxxxx')) print*,'101'
 a='abc'
 if(all(a/='abc')) print*,'102'
end associate
print*,'pass'
end
