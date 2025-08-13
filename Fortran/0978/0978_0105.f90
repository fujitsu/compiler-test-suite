subroutine s2
  type ty01
    character(len=10),allocatable :: char01(:,:,:)
  end type
  type(ty01) :: struct01
integer k(3,4,5)

  allocate(struct01%char01(3,4,5))

  struct01%char01='1'
  write(41,*)struct01%char01
rewind 41
read(41,*) k
if (any(k/=1))write(6,*) "NG"
end
subroutine s1
  type ty01
    character(len=10),allocatable :: char01(:)
  end type
  type(ty01) :: struct01

  allocate(struct01%char01(3))

  struct01%char01=(/'1','2','3'/)
  write(40,*)struct01%char01
rewind 40
read(40,*) k1,k2,k3
if (any((/k1,k2,k3/)/=(/1,2,3/)))write(6,*) "NG"
end
call s1
call s2
print *,'pass'

end
