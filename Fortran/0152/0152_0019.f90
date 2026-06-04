call aaa
call bbb
call ccc
print *,'pass'
end
subroutine aaa
logical::i,j
j=.true.
!$omp atomic write
i=.not.j
if(i.neqv..false.) print *,'err'
end
subroutine bbb
logical::i(1),j(1)
j=.true.
!$omp atomic write
i(1)=.not.j(1)
if(i(1).neqv..false.) print *,'err'
end
subroutine ccc
type t
logical::i
logical::j
end type
type(t)::tt
tt%j=.true.
!$omp atomic write
tt%i=.not.tt%j
if(tt%i.neqv..false.) print *,'err'
end
