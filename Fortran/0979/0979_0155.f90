 i=iop(10)
 call sub(i)

close(10,status='delete')

print *,'pass'

end

subroutine sub(i)
 integer i

 flush(unit=i,IOSTAT=i)
end subroutine

function  iop(iii)  result(res)
 integer :: iii
 integer :: res

 open (unit=10, file='aa.dat',status='NEW')
 res=iii

end function

