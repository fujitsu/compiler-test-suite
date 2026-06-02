logical::l
call sub(2,l)
call sub1
print *,'pass'
contains
subroutine sub(x,y)
integer::x
logical,intent(out),optional::y
logical::z=.false.
y=.false.
do concurrent(x=1:1,x>0)
!$omp atomic capture
z=y
y=x>0
!$omp end atomic
if(z.neqv..false.) print *,'err1',z
if(y.neqv..true.) print *,'err2'
enddo
end subroutine
subroutine sub1
logical::l=.true.
logical::n=.false.
!$omp atomic capture
l=n
n=.not..false.
!$omp end atomic
if(l.neqv..false.) print *,'err3'
if(n.neqv..true.) print *,'err4'
end subroutine

end
