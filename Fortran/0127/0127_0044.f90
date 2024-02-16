module data
  integer*8 flag
  contains
    subroutine flag_on()
      flag = 1
    end subroutine flag_on

    subroutine flag_off()
      flag = 0
    end subroutine flag_off
end module data

program main
  use data
  integer * 8 array(100)
  integer * 8 i, tmp
  
  do i=1,100 
     array(i) = i
  enddo

  call flag_on()
  
  do i=1,100 
     if (i > 25 .or. flag == 1) then
        tmp = 0
     end if
     tmp = array(i)
  enddo
  
  if (tmp == 100) then
     print *,"OK"
  else
     print *,"NG",tmp
  end if
end program main
