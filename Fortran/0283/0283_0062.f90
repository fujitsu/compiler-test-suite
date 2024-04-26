program main
character(len=5)::ch
ch='xxxxx'
associate(a=>ch(3:))
 if(a/='xxx') print*,'101'
 a='abc'
 if(a/='abc') print*,'102'
end associate

if(ch/='xxabc') print*,'103'
print*,'pass'
end
