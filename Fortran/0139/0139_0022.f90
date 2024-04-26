program main

 character(len =4,kind=4),dimension(2,2,2:1) ::a
 character(len =4, kind=4),dimension(2,2)::backend
 character(len =4, kind=4),parameter,dimension(2,2,2:1) ::b = RESHAPE((/"lmno","efgh","mnop","pqrs"/),(/2,2,0/))
 character(len =4,kind=4),parameter,dimension(2,2)::frontend = minval(b,dim=3)

 integer,parameter::p = kind(minval(b,dim=3))
 a = reshape((/"lmno","efgh","mnop","pqrs"/),(/2,2,0/))
 backend = minval(a,dim=3)
 
 backend(:,:)(1:1) = char(2147483647,kind=4)
 backend(:,:)(2:2) = char(2147483647,kind=4)
 backend(:,:)(3:3) = char(2147483647,kind=4)
 backend(:,:)(4:4) = char(2147483647,kind=4)
 do i = 1,2
 do j = 1,2
  print*, 'UTF -> UTF'
 enddo
  enddo
 
 call check1(p, kind(minval(a,dim=3)))

end

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
