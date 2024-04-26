program main
character(kind=4,len=4)::ch
ch=4_'xxxx'

associate(a=>ch)
 a=4_'pass'
end associate

print*,ch
end
