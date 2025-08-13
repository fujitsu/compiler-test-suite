save
type ss1
  sequence
  integer,dimension(1000,1000):: a
  real,dimension(1000,1000):: b
  complex,dimension(1000,1000):: c
  character(len=256):: s
end type ss1
type(ss1):: x1(1), x2(1)
logical l1, l2

ii=1
do j=1,1000
do i=1,1000
x1(1)%a(i,j) = ii-1
x2(1)%a(i,j) = ii+1
ii=ii+1
end do
end do
call random_seed()
call random_number(x1(1)%b)
call random_number(x2(1)%b)
do j=1, 1000
  do i=1, 1000
    x1(1)%c(i,j) = cmplx(x1(1)%b(i,j),x2(1)%b(i,j))
    x2(1)%c(i,j) = cmplx(x2(1)%b(j,i),x1(1)%b(j,i))
  enddo
enddo
x1(1)%s = 'Hello, World.'
x2(1)%s = 'Hello, world.'

call sub(x1(1), x2(1), l1, l2)
print *, ': ok'
end

subroutine sub(x1, x2, l1, l2)
type ss1
  sequence
  integer,dimension(1000,1000):: a
  real,dimension(1000,1000):: b
  complex,dimension(1000,1000):: c
  character(len=256):: s
end type ss1
type(ss1):: x1, x2
logical l1, l2

do j=1, 1000
  do i=1, 1000
    if(x1%a(i,j).lt.(i+(j-1)*1000) .and. &
       x2%a(i,j).gt.(i+(j-1)*1000)) then
      l1 = .true.
    else
      l1 = .false.
    endif
    if(.not.(x1%a(i,j).lt.(i+(j-1)*1000) .and. &
             x2%a(i,j).gt.(i+(j-1)*1000))) then
      l2 = .true.
    else
      l2 = .false.
    endif
    if(l1.eqv.l2.and.l1.eqv..true.) print *, 'compare of integer: ng'

    if((x1%b(i,j).eq.x2%b(i,j) .or. x1%c(i,j).eq.x2%c(i,j)) .and. &
       x1%s.ne. x2%s) then
      l1 = .true.
    else 
      l1 = .false.
    endif
    if(.not.((x1%b(i,j).eq.x2%b(i,j) .or. x1%c(i,j).eq.x2%c(i,j)) .and. &
             x1%s.ne. x2%s)) then
      l2 = .true.
    else 
      l2 = .false.
    endif
    if(l1.eqv.l2) print *, 'compare of real, complex and character: ng'
  enddo
enddo
end
