  integer :: x,y
  call sub(x,y)
  end
  subroutine sub(iostat1,iostat2)
  integer :: i,iostat1,iostat2
  character*2 result
  iostat1=-1 
  iostat2=-1 
  result = "a"
  open(unit=1,file="fort.10",iostat=iostat1,iomsg=result)
  if(iostat1==0) then
    do i=1,10
      write(1,*) i
    end do
  close(UNIT=1, iostat=iostat2, err=99, status="delete", iomsg=result)
  end if
  print *,"pass"
99 continue
  end

