complex :: a(2:6)
integer:: b = 5
a = (2.56,4.89)

associate ( x => (a%im * 10-b*2*a%re))
if(any(x .ne.   23.3)) print*, "101"
if(UBOUND(x,1) .ne. 5) print*,"102"
if(SIZE(x) .ne. 5) print*,"103"
end associate
print*,"Pass"
end
