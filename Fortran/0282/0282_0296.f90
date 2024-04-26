Program Main

character(len=5, kind=1),dimension(2,3,2,1)::a

character(len=5, kind=1),parameter, dimension (2,3,2,1) :: b = reshape((/"abcde","fghij","klmno","pqrst","uvwxy","zabcd","efghi","jklmn", &
                                   "opqrs","tuvwx","yzabc","defgh"/), (/2,3,2,1/))

logical*8,parameter::m = .false.

integer,parameter,dimension(3,2,1) :: c = minloc(b,dim =1, mask = m)

integer,dimension(3,2,1) :: d

integer::p = kind(minloc(b,dim =1, mask = m))

a = reshape((/"abcde","fghij","klmno","pqrst","uvwxy","zabcd","efghi","jklmn", "opqrs","tuvwx","yzabc","defgh"/), (/2,3,2,1/))

d =  minloc(a,dim =1, mask = m)
do i = 1,3
do j = 1,2
do k = 1,1
print*, c(i,j,k), '---', d(i,j,k)
if (c(i,j,k).ne.d(i,j,k)) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'

endif
enddo
enddo
enddo
call check(p, kind(minloc(a,dim =1,mask = m)))

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
