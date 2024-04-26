call sub8201(1,1)
call sub8206()
call sub8208()
call sub8209()
call sub8213()

end

subroutine sub8201(m1,j)
integer,parameter::n=10
real(8),dimension(1:n) :: a,b
real(8),parameter :: f=2.
real(8),parameter :: master=4.

b=2.
do i=1,n
  if(j .le. m1) then
    a(i)=b(j)*f
  end if
enddo

if (a(1) == master) then
  print *,'ok'
else
  print *,'ng'
endif

end subroutine sub8201

subroutine sub8206()
  integer,parameter::n=10
  real(8),dimension(n) :: a,b
  real(8),parameter :: master=10.
b=100.
  do i=1,n
     a(i) = b(i) / 10
  enddo

if (a(1) == master) then
  print *,'ok'
else
  print *,'ng'
endif

end subroutine sub8206

subroutine sub8208()
integer,parameter::n=10
real(kind=8),dimension(1:N) :: ary1,ary2
real(kind=8) d

ary1=1._8
ary2=2._8

d = 0._8
do i=1,n
  d=d+ary1(i)*ary2(i)
enddo

if (int(d,kind=4)==20_4) then
  print *,"ok"
else
  print *,"ng",d
endif
end subroutine sub8208

subroutine sub8209()
  integer,parameter::n=10
  real(8),dimension(n) :: a,b,c

a = 1.
b = 2.
c = 2.
  do i=1,n
     a(i) = a(i) * b(i) + a(i) * c(i) 
  enddo

end subroutine sub8209


subroutine sub8213()
complex(kind=16) c,e
complex(kind=16) c1
complex(kind=16) e1,res
real(kind=8),parameter:: error=0.000001_8
	
c = (4.0,2.0)
e = (4.0,2.0)

c1 = c**2.0 + c**3.0 + c**4.0 + c**5.0
e1 = e**2.0 + e**3.0 + e**4.0 + e**5.0
res=c1-e1

if (abs(real(res)-imag(res)) <= error) then
  print *,'ok'
else
  print *,'ng'
endif

end subroutine sub8213
