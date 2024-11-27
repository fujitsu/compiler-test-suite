program main

type der_type
   real x
   integer :: in
end type der_type

type(der_type), dimension(0:4), target  :: typ
integer       , dimension(:)  , pointer :: pt_1, pt_2, pt_3
integer       , dimension(3:7), target  :: jn

typ%in =  45
typ%x  =  3.
pt_1         => typ%in

write(1,*)' lbound(typ%in), ubound(typ%in) ', lbound(typ%in),ubound(typ%in)
write(1,*)' lbound(pt_1), ubound(pt_1)     ', lbound(pt_1),ubound(pt_1)

write(1,*)' typ(0)%in, typ(4)%in, (expected : 45,XX) ', typ(0)%in, typ(4)%in
write(1,*)' pt_1(0), pt_1(5), (expected : XX,45)    ', pt_1(1), pt_1(5)
write(2,*) lbound(typ%in),ubound(typ%in)
write(2,*) lbound(pt_1),ubound(pt_1)

write(2,*) typ(0)%in
write(2,*) pt_1(5)

jn = 14 
pt_2         => jn(5:7)
pt_3         => jn

write(1,*)' lbound(pt_2), ubound(pt_2), (expected : 1,3)       ', lbound(pt_2),ubound(pt_2)
write(1,*)' pt_2(3), pt_2(5), (expected : 14,XX)               ', pt_2(1), pt_2(3)
write(1,*)' lbound(pt_3), ubound(pt_3), (expected : 3,7)       ', lbound(pt_3),ubound(pt_3)
write(1,*)' pt_3(1), pt_3(6), (expected : XX,14)               ', pt_3(5), pt_3(6)
write(1,*)' lbound(jn), ubound(jn), (expected : 3,7)           ', lbound(jn),ubound(jn)
write(1,*)' lbound(jn(3:7)), ubound(jn(3:7)), (expected : 1,5) ', lbound(jn(3:7)),ubound(jn(3:7))

write(1,*) ' fin du test : lbound_ubound_1'
write(2,*) lbound(pt_2),ubound(pt_2)
write(2,*) pt_2(3)
write(2,*)lbound(pt_3),ubound(pt_3)
write(2,*)  pt_3(6)
write(2,*) lbound(jn),ubound(jn)
write(2,*) lbound(jn(3:7)),ubound(jn(3:7))
rewind 2
read(2,*) ii,jj;if (any((/ii,jj/)/=(/1,5/)))print *,'error-1'
read(2,*) ii,jj;if (any((/ii,jj/)/=(/1,5/)))print *,'error-2'
read(2,*) ii;if (any((/ii/)/=(/45/)))print *,'error-3'
read(2,*) ii;if (any((/ii/)/=(/45/)))print *,'error-4'
read(2,*) ii,jj;if (any((/ii,jj/)/=(/1,3/)))print *,'error-5'
read(2,*) ii;if (any((/ii/)/=(/14/)))print *,'error-6'
read(2,*) ii,jj;if (any((/ii,jj/)/=(/3,7/)))print *,'error-7'
read(2,*) ii;if (any((/ii/)/=(/14/)))print *,'error-8'
read(2,*) ii,jj;if (any((/ii,jj/)/=(/3,7/)))print *,'error-9'
read(2,*) ii,jj;if (any((/ii,jj/)/=(/1,5/)))print *,'error-a'
print *,'pass'
end program main
