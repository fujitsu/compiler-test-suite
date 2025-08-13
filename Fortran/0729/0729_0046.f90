program main

  character (len = 3), dimension (3) :: table
  integer :: indx

  table(1) = "CAR"
  table(2) = "DLV"
  table(3) = "RLV"

  write (90,*) "%main: SIZE(table) = ", SIZE(table)
  do indx = 1, SIZE(table)
    write(90,*) indx," [",TRIM(table(indx)),"]"
  end do

  call sub1 (table)
  call chk

contains

subroutine sub1 (table)

  character (len = *), dimension (:), intent (in) :: table
  integer :: indx

  write (90,*) "%sub1: SIZE(table) = ", SIZE(table)
  do indx = 1, SIZE(table)
    write(90,*) indx," [",TRIM(table(indx)),"]"
  end do

  call sub2 (table)

end subroutine sub1

subroutine sub2 (table)

  character (len = *), dimension (:), intent (in) :: table
  integer :: indx

  write (90,*) "%sub2: SIZE(table) = ", SIZE(table)
  do indx = 1, SIZE(table)
    write(90,*) indx," [",TRIM(table(indx)),"]"
  end do

end subroutine sub2
subroutine chk
character*100 c
rewind 90
read(90,'(a)') c
if (index(c,'%main: SIZE(table) =')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'CAR')==0)write(6,*) "NG"
if (index(c,'1')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'DLV')==0)write(6,*) "NG"
if (index(c,'2')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'RLV')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'%sub1: SIZE(table) =')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'CAR')==0)write(6,*) "NG"
if (index(c,'1')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'DLV')==0)write(6,*) "NG"
if (index(c,'2')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'RLV')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'%sub2: SIZE(table) =')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'CAR')==0)write(6,*) "NG"
if (index(c,'1')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'DLV')==0)write(6,*) "NG"
if (index(c,'2')==0)write(6,*) "NG"
read(90,'(a)') c
if (index(c,'RLV')==0)write(6,*) "NG"
if (index(c,'3')==0)write(6,*) "NG"
print *,'pass'
end subroutine

end program main
