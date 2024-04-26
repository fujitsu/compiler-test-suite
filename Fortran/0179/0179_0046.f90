call sub0()
call sub1()
call sub2()
print *,'pass'
contains
subroutine sub0()
data i /1/      
j=i;j=j
end subroutine
subroutine sub1()
common /com/ i
save
end subroutine
end
subroutine sub2()
save j
end subroutine
