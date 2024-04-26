call sub
block
call sub
call sub
end block
call sub
contains
subroutine sub
real,save::a=0
block
real,save :: a=0
print*,"called : ",a+10
a=a+10
end block
print*,"called : ",a+1
a=a+1
end subroutine
end
