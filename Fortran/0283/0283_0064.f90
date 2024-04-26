program main
character(len=5)::ch(3)
ch='xxxxx'
associate(a=>ch(1:3)(:3))
 if(a(2)/='xxx') print*,'101'
 a='abc'
 if(a(2)/='abc') print*,'102'
end associate

if(ch(2)/='abcxx') print*,'103'
print*,'pass'
end
