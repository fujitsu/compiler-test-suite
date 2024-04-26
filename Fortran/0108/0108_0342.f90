program main
integer,parameter :: N=3000
real(kind=4),dimension(1:N) :: a,b

call sub00()
call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub10()
call sub11()
call sub12()
call sub13()
call sub14()
call sub15()
call sub20()
call sub21()
call sub22()
call sub23()
call sub24()
call sub25()
call sub30()
call sub31()
call sub32()
call sub33()
call sub34()
call sub35()

contains
subroutine init_a()
a = (/(real(i,kind=4),i=1,N)/)
b = (/(real(i*i-i,kind=4),i=1,N)/)
end subroutine

subroutine sub00()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .eq. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub01()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .ne. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub02()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .gt. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub03()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .ge. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub04()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .lt. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub05()
real(kind=4) prg
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .le. b(i)) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg,kind=8)
end subroutine

subroutine sub10()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .eq. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub11()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .ne. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub12()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .gt. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub13()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .ge. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub14()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .lt. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub15()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  if (a(i) .le. b(i)) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg2 = prg - a(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub20()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .eq. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub21()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .ne. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub22()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .gt. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub23()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .ge. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub24()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .lt. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub25()
real(kind=4) prg,prg2
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .le. prg2) then
    prg  = a(i)
  endif
  prg = prg + b(i)
enddo
print *,int(prg+prg2,kind=8)
end subroutine

subroutine sub30()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .eq. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

subroutine sub31()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .ne. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

subroutine sub32()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .gt. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

subroutine sub33()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .ge. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

subroutine sub34()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .lt. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

subroutine sub35()
real(kind=4) prg,prg2,prg3
call init_a()
prg = a(1)
do i=1,N
  prg2 = b(i) - prg
  if (a(i) .le. prg2) then
    prg  = a(i)
  endif
  prg  = prg + b(i)
  prg3 = prg - i
enddo
print *,int(prg+prg2+prg3,kind=8)
end subroutine

end program
