program main
integer,parameter :: N=3000
integer(kind=4),dimension(1:N) :: a

call sub0()
call sub1()
call sub2()
call sub3()

contains
subroutine init_a()
a = (/(int(i,kind=4),i=1,N)/)
end subroutine

subroutine sub0()
integer(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  prg  = MAX(prg,a(i))
enddo
print *,prg
end subroutine

subroutine sub1()
integer(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg  = MAX(prg,a(i))
  prg2 = MIN(prg,a(1))
enddo
print *,prg-prg2
end subroutine

subroutine sub2()
integer(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = MIN(prg,a(N))
  prg  = MAX(prg,a(i))
enddo
print *,prg-prg2
end subroutine

subroutine sub3()
integer(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = MIN(prg,a(2))
  prg  = MAX(prg,a(i))
  prg3 = MAX(prg,a(N))
enddo
print *,prg-prg3+prg2
end subroutine

end program
