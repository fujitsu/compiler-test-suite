common /com2/jjj(2)
call isub()
contains
subroutine isub()
common /com/ i
common /com2/ jj,j2
common /com1/ j
common /com3/ j3
pointer :: j3
data kk,jj,j3,j2 /1,1,null(),1/
j=4
call sub()
if (j.ne.5) print *,'fail'
call suba(j2)
print *,"pass"
end subroutine
end

subroutine suba(j2)
i=j2
i=i
end
subroutine sub()
call isub()
contains
subroutine isub()
common /com1/ j
j=5
end subroutine
end
