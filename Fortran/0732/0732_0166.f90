subroutine spr_calc_leg(spr_raiz_qua,valo_ani,m,spr_poli_leg)

implicit none

real,dimension(:),intent(in)		:: spr_raiz_qua

integer,intent(in)			:: valo_ani
integer,intent(in)			:: m

real,dimension(:,:),intent(out)		:: spr_poli_leg

real,dimension(:,:),allocatable		:: spr_poli_aux

integer		:: n
integer		:: i
integer		:: j
integer		:: k=20

integer		:: ind_m

real		:: xx
real		:: div_m
real		:: spr_valo_2vm
real		:: spr_valo_som
real		:: spr_valo_pmm

real,dimension(:),allocatable	:: aux_0
real,dimension(:),allocatable	:: aux_1
real,dimension(:),allocatable	:: aux_2
real,dimension(:),allocatable	:: aux_3
real,dimension(:),allocatable	:: spr_raiz_pot

integer		:: dummy

n=size(spr_raiz_qua)
allocate(spr_poli_aux(valo_ani+1,n))

ind_m=m+1

allocate(aux_0(valo_ani))
allocate(aux_1(valo_ani))
allocate(aux_2(valo_ani))
allocate(aux_3(valo_ani))

allocate(spr_raiz_pot(n))

do i=m,valo_ani-1
	aux_0(i+1)=float(i)
enddo

do i=ind_m,valo_ani
	aux_1(i)=2*aux_0(i)+1
enddo

xx=float(m)**2

do i=ind_m,valo_ani
	aux_2(i)=((aux_0(i)+1)**2-xx)**0.5
enddo

do i=ind_m,valo_ani
	aux_3(i)=(aux_0(i)*aux_0(i)-xx)**.5
enddo

spr_poli_aux(ind_m,:)=0

if (m==0) then
	spr_poli_aux(ind_m+1,:)=1
else
	div_m=float(m)/2
	do i=1,n
		spr_raiz_pot(i)=(1-spr_raiz_qua(i)*spr_raiz_qua(i))**div_m
	enddo
	spr_valo_2vm=2*float(m)
	spr_valo_som=0
	spr_valo_pmm=1
	do j=1,m
		spr_valo_pmm=spr_valo_pmm*sqrt(spr_valo_2vm+spr_valo_som-1)/sqrt(spr_valo_2vm+spr_valo_som)
		spr_valo_som=spr_valo_som-2
	enddo
	do j=1,n
		spr_poli_aux(ind_m+1,j)=spr_valo_pmm*spr_raiz_pot(j)
	enddo
endif

do i=ind_m,valo_ani-1
		do j=1,n
			spr_poli_aux(i+2,j)=(aux_1(i)*spr_raiz_qua(j)*spr_poli_aux(i+1,j)-aux_3(i)*spr_poli_aux(i,j))/aux_2(i)
		enddo
	enddo

	do i=1,valo_ani
		do j=1,n
			spr_poli_leg(i,j)=spr_poli_aux(i+1,j)
		enddo
	enddo

	deallocate(spr_poli_aux)
	deallocate(aux_0)
	deallocate(aux_1)
	deallocate(aux_2)
	deallocate(aux_3)
	deallocate(spr_raiz_pot)
end subroutine spr_calc_leg

print *,'pass'
end
