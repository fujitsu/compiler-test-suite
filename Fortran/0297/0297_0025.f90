subroutine sub1(a, b)
  real*8 a
  integer*8 b
  b = a
  if (a .eq. 11) then
    write(6,*) "ok sub1"
  else
    write(6,*) "ng sub1"
  endif
end subroutine

subroutine sub11(a, b)
  real*8 b
  integer*8 a
  b = a
  if (b .eq. 11) then
    write(6,*) "ok sub11"
  else
    write(6,*) "ng sub11"
  endif
end subroutine

subroutine sub2(a,b)
  real*4 a
  integer*4 b
  b = a
  if (a .eq. 13) then
    write(6,*) "ok sub2"
  else
    write(6,*) "ng sub2"
  endif
end subroutine

subroutine sub22(a,b)
  real*4 b
  integer*4 a
  b = a
  if (b .eq. 13) then
    write(6,*) "ok sub22"
  else
    write(6,*) "ng sub22"
  endif
end subroutine

subroutine sub3(a,b,n)
  real*4 a(n)
  integer*4 b(n),answer
  integer i 
  answer = 0
  do i = 1,10
    b(i) = a(i)
  enddo
  do i = 1,10
    answer = answer + b(i)
  enddo
  if (answer .eq. 140) then
    write(6,*) "ok sub3"
  else
    write(6,*) "ng sub3"
  endif
end subroutine

subroutine sub33(a,b,n)
  integer*4 a(n)
  real*4 b(n),answer
  integer i 
  answer = 0.0
  do i = 1,10
    b(i) = a(i)
  enddo
  do i = 1,10
    answer = answer + b(i)
  enddo
  if (answer .eq. 140) then
    write(6,*) "ok sub33"
  else
    write(6,*) "ng sub33"
  endif
end subroutine

subroutine sub4(a,b,n)
  real*8 a(n)
  integer*8 b(n),answer
  integer i ,n
  answer = 0
  do i = 1,10
    b(i) = a(i)
  enddo
  do i = 1,10
    answer = answer + b(i)
  enddo
  if (answer .eq. 120) then
    write(6,*) "ok sub4"
  else
    write(6,*) "ng sub4"
  endif
end subroutine

subroutine sub44(a,b,n)
  integer*8 a(n)
  real*8 b(n),answer
  integer i,n 
  answer = 0.0
  do i = 1,10
    b(i) = a(i)
  enddo
  do i = 1,10
    answer = answer + b(i)
  enddo
  if (answer .eq. 120) then
    write(6,*) "ok sub44"
  else
    write(6,*) "ng sub44"
  endif
end subroutine

integer*8 ia8(10),iaa8
real*8 rb8(10),rbb8
integer*4 ia4(10),iaa4
real*4 rb4(10),rbb4
integer n,i
n = 10
do i = 1,10
 iaa8 = i 
 rbb8 = i + 1
 iaa4 = i + 2
 rbb4 = i + 3
 ia8(i) = i + iaa8
 rb8(i) = i + rbb8
 ia4(i) = i + iaa4
 rb4(i) = i + rbb4
enddo
call sub1(rbb8, iaa8)
call sub11(iaa8, rbb8)
call sub2(rbb4, iaa4)
call sub22(iaa4,rbb4)
call sub3(rb4, ia4, n)
call sub33(ia4, rb4, n)
call sub4(rb8, ia8, n)
call sub44(ia8, rb8, n)
end
