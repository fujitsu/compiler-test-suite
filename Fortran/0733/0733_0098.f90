program main

integer, parameter :: ndeb=3, nfin = 10

type t_vhydro
   sequence
   integer in
   real r
end type t_vhydro

type t_vphoto
   sequence
   integer jn, kn
   real s, t
end type t_vphoto

type t_varmaille
   sequence
   type( t_vhydro), dimension(:), pointer :: vhydro
   type( t_vphoto), dimension(:), pointer :: vphoto
end type t_varmaille

type( t_varmaille), target :: varmaille
integer, dimension(:), pointer :: pt_in

allocate ( varmaille%vhydro( ndeb:nfin))
allocate ( varmaille%vphoto( ndeb:nfin))

pt_in => varmaille%vhydro%in

write(1,*)' lbound, ubound(pt_in) ', lbound(pt_in),ubound(pt_in)
write(1,*)' lbound, ubound(varmaille%vhydro%in) ', &
    lbound(varmaille%vhydro%in),ubound(varmaille%vhydro%in)

do i=ndeb, nfin
  varmaille%vhydro(i)%in = i
enddo

write(1,*) ' all lines should be : i  i  '
do i=ndeb, nfin
   write(1,*) i, varmaille%vhydro(i)%in
enddo

write(1,*) ' same here, since pt_in(1:nfin-ndeb+1) should be '
write(1,*) ' identical to varmaille%vhydro(ndeb:nfin)%in '
do i=1, nfin-ndeb+1
   write(1,*) ndeb-1+i, pt_in(i)
enddo

write(1,*) ' fin du test : type_derive'
rewind 1
call chk
print *,'pass'
end program main
subroutine chk
character*100 r
read(1,'(a)') r
if (index(r,'lbound, ubound(pt_in)  1 8')==0)print *,'error-1'
read(1,'(a)') r
if (index(r,'lbound, ubound(varmaille%vhydro%in)  1 8')==0)print *,'error-2'
read(1,'(a)') r
if (index(r,'all lines should be : i  i')==0)print *,'error-3'
do kk=3,10
read(1,*) i,j;if (i/=kk)print *,'error-4',kk;if (j/=kk)print *,'error-5',kk
end do
read(1,'(a)') r
if (index(r,'same here, since pt_in(1:nfin-ndeb+1) should be')==0)print *,'error-6'
read(1,'(a)') r
if (index(r,'identical to varmaille%vhydro(ndeb:nfin)%in')==0)print *,'error-6'
do kk=3,10
read(1,*) i,j;if (i/=kk)print *,'error-7',kk;if (j/=kk)print *,'error-8',kk
end do
read(1,'(a)') r
if (index(r,'fin du test : type_derive')==0)print *,'error-6'
end
