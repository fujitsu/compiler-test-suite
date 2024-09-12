subroutine s1
logical exists,is_open
integer:: stat
character(1000)::iomsg 
open(file="fort.10010",UNIT=1,position="rewind",form="unformatted")
write(1)"aaa"
call system("rename fort.10010 fort.11111 fort.10010")
inquire(unit=1,exist=exists,opened=is_open)
write(2,*)"unit1: exists=",exists,", is_open=",is_open
inquire(file="fort.10010",exist=exists,opened=is_open)
write(2,*)"fort.10010: exists=",exists,", is_open=",is_open
if (.not.is_open) then
  write(2,*)"Open-again"
  open(file="fort.10010",UNIT=1,position="rewind",form="unformatted",&
       iostat=stat,iomsg=iomsg)
  if (stat/=0) print *,'OPEN is FAIL :',trim(iomsg)
else
  print *,'Open-no-executed'
end if
close(1)
end

print *,'pass'
end
