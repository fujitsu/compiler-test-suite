subroutine sub()
integer :: iii1
character(5) :: cha1
integer,allocatable :: iii2
character(5),allocatable :: cha2
save
allocate(iii2,cha2)
iii1 = 10
cha1 = "aaaaa"
iii2 = 100
cha2 = "abcde"

!$omp task
  iii1 = 1000
  cha1 = "zzzzz"
  iii2 = 2000
  cha2 = "efghi"
!$omp end task
if (1.eq.2) then
print *,iii1
print *,cha1
print *,iii2
print *,cha2
endif
end
call sub()
print *,"pass"
end
