call aaa
call bbb
call ccc
print *,'pass'
end
subroutine aaa
type t
integer::j
integer::i
end type
type(t)::tt
tt%j=-1
!$omp atomic write
tt%i=+tt%j
if(tt%i/=-1) print *,'err1'
!$omp atomic write
tt%i=-tt%j
if(tt%i/=1) print *,'err2'
end subroutine
subroutine bbb
type t
integer::j
integer::i
end type
type(t)::tt
tt%j=-1
!$omp atomic write
tt%i=+tt%j
!$omp end atomic
if(tt%i/=-1) print *,'err3'
!$omp atomic write
tt%i=-tt%j
!$omp end atomic
if(tt%i/=1) print *,'err4'
end subroutine
subroutine ccc
type t
integer::j
integer::i
end type
type(t)::tt
tt%j=-1
!$omp atomic write
tt%i=+(tt%j)
!$omp end atomic
if(tt%i/=-1) print *,'err5'
!$omp atomic write
tt%i=-(tt%j)
!$omp end atomic
if(tt%i/=1) print *,'err6'
end subroutine
