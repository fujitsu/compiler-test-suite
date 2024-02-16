type ty
complex(2) :: cmp
complex(2) :: cmp_dsb(5)

real(2) :: r2 = 1.0
real(2) :: r2_ar(4) = 4
real(8) :: r8(5) = 10.0

integer(2) :: i2 = 5
integer(8) :: i8(5) = 2

complex(2) :: c2 = (2,3)     
complex(2) :: c2_ar(5) = (10,10)     
complex(8) :: c8(5) = (1,1)     
end type

type(ty) :: obj
obj%cmp=obj%c2/obj%r2
if(obj%cmp .ne. (2,3))print*,"101"

obj%cmp_dsb(2)=obj%c2_ar(3)/obj%r8(1)
if(obj%cmp_dsb(2) .ne. (1,1))print*,"102"

obj%cmp=obj%i2/obj%c2
if(abs(obj%cmp - (5/(2,3)))>0.01)print*,"103"

obj%cmp_dsb(3)=obj%c2_ar(1)/obj%i8(1)
if(obj%cmp_dsb(3) .ne. ((10,10)/2))print*,"104"

obj%cmp_dsb(4)=obj%c2_ar(2)/obj%c8(2)
if(obj%cmp_dsb(4) .ne. ((10,10)/(1,1)))print*,"105"

obj%cmp_dsb(1)=obj%c2_ar(1)/obj%r2_ar(2)
if(obj%cmp_dsb(1) .ne. ((10,10)/4))print*,"106"
print*,"pass"
end
