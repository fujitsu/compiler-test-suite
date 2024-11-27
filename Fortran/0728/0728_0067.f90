  call s1
  print *,'pass'
  end
  subroutine sub(a,k)
  integer a(:)
  j=0
  select case (lbound(a,k))
      case (0)
  write(6,*) "NG"
      case(1)
        j=1
      case (2)
        write(6,*) "NG"
  end select
    if (j/=1)write(6,*) "NG"
  j=0
  select case (lbound(a,k))
      case (0)
  write(6,*) "NG"
      case(1)
        j=1
      case (2,3,4,5,6,7,8,9,10,11,12,13,14,15)
        write(6,*) "NG"
  end select
    if (j/=1)write(6,*) "NG"
  j=0
  select case (lbound(a,k))
      case (0)
  write(6,*) "NG"
      case (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
        j=1
  end select
    if (j/=1)write(6,*) "NG"
end subroutine
subroutine s1
  interface
  subroutine sub(a,k)
  integer a(:)
 end subroutine
  end interface
  integer a(2)/1,2/
  do i=1,1000
  call sub(a,1)
  end do
  end
