program main

character(len=5,kind=1),dimension(2,3)::a
character(len=5,kind=1),parameter, dimension (2,3) :: b = reshape((/"abcde","fghij","klmno",&
                               "pqrst","vwxyz","afkpv"/), (/2,3/))

character(len=5, kind=1),dimension(3)::d
character(len=5, kind=1),parameter,dimension(3) :: c = maxval(b,dim =1, mask=b>"zzzzz")

integer,parameter::p = kind(maxval(b,dim =1, mask=b>"zzzzz"))

a = reshape((/"abcde","fghij","klmno","pqrst","vwxyz","afkpv"/), (/2,3/))
d = maxval(a,dim =1,mask = a>"zzzzz")

do i = 1,3
print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: C -> C) ???'

else

print*, 'C -> C'


endif

enddo

call check(p, kind(maxval(a,dim =1, mask=a>"zzzzz")))

end

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
