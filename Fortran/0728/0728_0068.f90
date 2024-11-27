  call s1
  print *,'pass'
  end
subroutine s1
  character  a(2)/'1','2'/
  do i=1,1000
  call sub(a,1)
  end do
  contains
  subroutine sub(a,k)
  character*(*) a(:)
  j=0
  select case (adjustl(a(k)))
      case ('0')
  write(6,*) "NG"
      case('1')
        j=1
      case ('2')
        write(6,*) "NG"
  end select
    if (j/=1)write(6,*) "NG"
  j=0
  select case (adjustl(a(k)))
      case ('0')
  write(6,*) "NG"
      case('1')
        j=1
      case ('2','3','4','5','6','7')
        write(6,*) "NG"
  end select
    if (j/=1)write(6,*) "NG"
  j=0
  select case (adjustl(a(k)))
      case ('0')
  write(6,*) "NG"
      case ('1','2','3','4','5','6')
        j=1
  end select
    if (j/=1)write(6,*) "NG"
end subroutine
  end
