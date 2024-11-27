implicit none
character*10 line
integer length
line='xx'
if (length(line)/=10)write(6,*) "NG"
print *,'pass'
call sub
end
integer function length(line)
character*(*) line
length=len(line)
end
subroutine sub
implicit none
character*10 line
line='xx'
if (length(line)/=11)write(6,*) "NG"
contains
integer function length(line)
character*(*) line
length=len(line)+1
end function
end
