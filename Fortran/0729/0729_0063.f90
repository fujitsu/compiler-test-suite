module useful
  public :: get_sq
  interface get_sq
     module procedure get_sq
  end interface
contains
  subroutine get_sq ( sq , csq , ii )
    integer , dimension (:) , pointer :: sq
    character (len=*) , dimension (:) , pointer :: csq
    integer , intent(in) :: ii
    integer :: i , j , imin , imax , numi , ier

    character (len=4) :: fmt_str

    fmt_str = "(I )"
    write ( unit=fmt_str(3:3) , fmt="(I1)" ) ii

    imin = 10 ** ( ii - 1 )
    imax = ( 10 * imin ) - 1

    numi = 0
    i = 1
    do
       if ( ( i * i ) > imin .and. ( i * i ) < imax ) then
          numi = numi + 1
       end if
       if ( ( i * i ) > imax ) then
          exit
       end if
       i = i + 1
    end do

    allocate ( sq ( 1:numi ) , stat=ier )
    if (ier/=0) then
       stop
    end if
    allocate ( csq (1:numi) , stat=ier )
    if (ier/=0) then
       stop
    end if

    i = 1
    j = 1
    do
       if ( ( i * i ) > imin .and. ( i * i ) < imax ) then
          sq(j) = i * i
          write ( csq (j) , fmt_str ) sq(j)
          j = j + 1
       end if
       if ( ( i * i ) > imax ) then
          exit
       end if
       i = i + 1
    end do
111 format(z)
    return
  end subroutine get_sq
end module useful

program p971
  use useful
  implicit none
  integer ,           dimension (:) , pointer :: sq2,sq3,sq4
  character (len=2) , dimension (:) , pointer :: csq2
  character (len=3) , dimension (:) , pointer :: csq3
  character (len=4) , dimension (:) , pointer :: csq4
  character (len=9) :: tot
  character (len=1) , dimension(9) :: tot_arr
  character (len=1) :: c
  integer :: i , ii , i2 , i3 , i4,i1

  call get_sq ( sq2 , csq2 , 2)
  call get_sq ( sq3 , csq3 , 3)
  call get_sq ( sq4 , csq4 , 4)

  write(98,*) size(sq2) , " " , size(sq3) , " " , size(sq4)

  l2: do i2 = 1 , size ( sq2 )
     l3: do i3 = 1 , size ( sq3 )
        l4: do i4 = 1 , size ( sq4 )
           tot = csq2 (i2) // csq3(i3) // csq4(i4)
           tot_arr =  (/ ( tot(i:i) , i=1,9 ) /)
           if ( count ( tot_arr == "1" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "2" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "3" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "4" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "5" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "6" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "7" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "8" ) /=  1 ) then
              cycle l4
           end if
           if ( count ( tot_arr == "9" ) /=  1 ) then
              cycle l4
           end if
           write(98,*) tot(1:2) , " " , tot(3:5) , " " , tot(6:9)
        end do l4
     end do l3
  end do l2
rewind 98
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/6,21,68/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/16,784,5329/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/25,784,1369/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/25,784,1936/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/25,841,7396/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/36,729,5184/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/81,324,7569/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/81,576,3249/)))write(6,*) "NG"
read(98,*)i1,i2,i3;if(any((/i1,i2,i3/)/=(/81,729,4356/)))write(6,*) "NG"
print *,'pass'
end program p971
