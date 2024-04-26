program main
character(len=1),dimension(10)::ch='x'

do i=10,2,-2
 associate(a=>ch(i))
  a='a'
 end associate
end do

do i=2,10,2
 if(ch(i)/='a') print*,'fail',i
end do

print*,'pass'
end
