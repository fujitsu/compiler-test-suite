!
!
!

subroutine SUB00()
  type mytype
     integer(8)::str_a
     integer(8)::str_b
  end type mytype
  integer(4)::i,j,a,b(10)
  type(mytype)::str
  a=100
  b=50
  str%str_a=100
  str%str_b=50
  !$omp task firstprivate(a,b,str)
     if (a/=100.or.str%str_a/=100.or.str%str_b/=50) then
        print *,"NG-SUB00-01: a=",a," str={str_a ",str%str_a,", str_b ",str%str_b
     end if
     do i=1,10
        if (b(i)/=50) then
           print *,"NG-SUB00-02: b(",i,")=",b(i)
        end if
     end do
     !$omp parallel reduction(+:a,b)
     !$omp do
        do i=1,10
           do j=1,100
              a=a+j
              b(i)=b(i)+j
           end do
        end do
     !$omp end parallel
     do i=1,10
        if (a.ne.50600.or.b(i).ne.5100) then
           print *,"NG-SUB00-03: a=",a," b(",i,")=",b(i)
        end if
     end do
  !$omp end task
  if (a.ne.100.or.str%str_a.ne.100.or.str%str_b.ne.50) then
     print *,"NG-SUB00-04: a=",a," str={str_a ",str%str_a,", str_b ",str%str_b
  end if
  do i=1,10
     if (b(i).ne.50) then
        print *,"NG-SUB00-05: b(",i,")=",b(i)
     end if
  end do
end subroutine SUB00

subroutine SUB01
  integer(4)::i,j
  integer(4),allocatable::alc(:)
  allocate(alc(10))
  alc=100
  !$omp task firstprivate(alc)
     do i=1,10
        if (alc(i)/=100) then
           print *,"NG-SUB01-01: alc(",i,")=",alc(i)
        end if
     end do
     !$omp parallel reduction(+:alc)
     !$omp do
        do i=1,10
           do j=1,100
              alc(i)=alc(i)+j
           end do
        end do
     !$omp end parallel
     do i=1,10
        if (alc(i).ne.5150) then
           print *,"NG-SUB01-02: alc(",i,")=",alc(i)
        end if
     end do
  !$omp end task
  do i=1,10
     if (alc(i)/=100) then
        print *,"NG-SUB01-03: alc(",i,")=",alc(i)
     end if
  end do
end subroutine SUB01

subroutine SUB02(n)
  integer(4)::n,i,j
  integer(8)::a(n)
  a=50
  !$omp task firstprivate(a)
     do i=1,10
        if (a(i).ne.50) then
           print *,"NG-SUB02-01: a(",i,")=",a(i)
        end if
     end do
     !$omp parallel reduction(+:a)
     !$omp do
        do i=1,10
           do j=1,100
              a(i)=a(i)+j
           end do
        end do
     !$omp end parallel
     do i=1,10
        if (a(i).ne.5100) then
           print *,"NG-SUB02-03: a(",i,")=",a(i)
        end if
     end do
  !$omp end task
  do i=1,10
     if (a(i).ne.50) then
        print *,"NG-SUB02-04: a(",i,")=",a(i)
     end if
  end do
end subroutine SUB02

subroutine SUB04
  integer(4) i
  integer,allocatable::a
  allocate(a)
  a=50
  !$omp task firstprivate(a)
     if (a.ne.50) then
        print *,"NG-SUB04-01: a=",a
     end if
     !$omp parallel reduction(+:a)
     !$omp do
        do i=1,100
           a=a+i
        end do
     !$omp end parallel
     if (a.ne.5100) then
        print *,"NG-SUB04-02: a=",a
     end if
  !$omp end task
  if (a.ne.50) then
     print *,"NG-SUB04-03: a=",a
  end if
end subroutine SUB04

program MAIN
  integer::a(10)
  call SUB00()
  call SUB01()
  call SUB02(10)
  call SUB03(a)
  call SUB04()
!$omp parallel
  call SUB00()
  call SUB01()
  call SUB02(10)
  call SUB03(a)
  call SUB04()
!$omp end parallel
  print *,"pass"
contains
  subroutine SUB03(a)
    integer,dimension(:)::a
    integer::i,j
    a=50
    !$omp task firstprivate(a)
       do i=1,10
          if (a(i)/=50) then
             print *,"NG-SUB03-01: a(",i,")=",a(i)
          end if
       end do
       !$omp parallel reduction(+:a)
       !$omp do
          do i=1,10
             do j=i,100
                a(i)=a(i)+j
             end do
          end do
       !$omp end parallel
       do i=i,10
          if (a(i).ne.5150) then
             print *,"NG-SUB03-03: a(",i,")=",a(i)
          end if
       end do
    !$omp end task
    do i=1,10
       if (a(i)/=50) then
          print *,"NG-SUB03-04: a(",i,")=",a(i)
       end if
    end do
  end subroutine SUB03
end program MAIN
