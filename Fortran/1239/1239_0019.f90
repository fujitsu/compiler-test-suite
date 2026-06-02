implicit none
block
!integer::g1,p2
integer::g3,p!1
g3=1
!g1=1
!p2=2
end block
print *,'pass'
end
subroutine sub()
implicit none
block
integer::g3,p1
g3=1
!p1=1
end block
end
