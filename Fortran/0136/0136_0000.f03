call a1
call a2
call a3
call a4
call a5
call a6
call a7
call b1
call b2
call b3
call b4
print *,'pass'
end
subroutine a1
integer(1),allocatable,dimension(:)::i
integer(1),dimension(5)::j
j=[1_1,2_1,3_1,4_1,5_1]
allocate(i,source=j)
if(any(i/=[1_1,2_1,3_1,4_1,5_1])) print *,'err1'
end subroutine
subroutine a2
integer(2),allocatable,dimension(:)::i
integer(2),dimension(5)::j
j=[1_2,2_2,3_2,4_2,5_2]
allocate(i,source=j)
if(any(i/=[1_2,2_2,3_2,4_2,5_2])) print *,'err2'
end subroutine
subroutine a3
integer(4),allocatable,dimension(:)::i
integer(4),dimension(5)::j
j=[1_4,2_4,3_4,4_4,5_4]
allocate(i,source=j)
if(any(i/=[1_4,2_4,3_4,4_4,5_4])) print *,'err3'
end subroutine
subroutine a4
integer(8),allocatable,dimension(:)::i
integer(8),dimension(5)::j
j=[1_8,2_8,3_8,4_8,5_8]
allocate(i,source=j)
if(any(i/=[1_8,2_8,3_8,4_8,5_8])) print *,'err4'
end subroutine
subroutine a5
real(4),allocatable,dimension(:)::i
real(4),dimension(5)::j
j=[1.0_4,2.0_4,3.0_4,4.0_4,5.0_4]
allocate(i,source=j)
if(any(i/=[1.0_4,2.0_4,3.0_4,4.0_4,5.0_4])) print *,'err5'
end subroutine
subroutine a6
real(8),allocatable,dimension(:)::i
real(8),dimension(5)::j
j=[1.0_8,2.0_8,3.0_8,4.0_8,5.0_8]
allocate(i,source=j)
if(any(i/=[1.0_8,2.0_8,3.0_8,4.0_8,5.0_8])) print *,'err6'
end subroutine
subroutine a7
real(16),allocatable,dimension(:)::i
real(16),dimension(5)::j
j=[1.0_16,2.0_16,3.0_16,4.0_16,5.0_16]
allocate(i,source=j)
if(any(i/=[1.0_16,2.0_16,3.0_16,4.0_16,5.0_16])) print *,'err7'
end subroutine
subroutine b1
integer(1),allocatable::i
allocate(i,source=1_1)
if(i/=1_1) print *,'err8'
end subroutine
subroutine b2
integer(2),allocatable::i
allocate(i,source=1_2)
if(i/=1_2) print *,'err9'
end subroutine
subroutine b3
integer(4),allocatable::i
allocate(i,source=1_4)
if(i/=1_4) print *,'err10'
end subroutine
subroutine b4
integer(8),allocatable::i
allocate(i,source=1_8)
if(i/=1_8) print *,'err11'
end subroutine


