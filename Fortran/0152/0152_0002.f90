call aaa
call bbb
call ccc
print *,'pass'
end
subroutine aaa
integer::j(1),i(1)
j(1)=-1
!$omp atomic write
i(1)=+j(1)
if(i(1)/=-1) print *,'err1',i(1)
!$omp atomic write
i(1)=-j(1)
if(i(1)/=1) print *,'err2'
end subroutine
subroutine bbb
integer::j(1),i(1)
j(1)=-1
!$omp atomic write
i(1)=+j(1)
!$omp end atomic
if(i(1)/=-1) print *,'err3'
!$omp atomic write
i(1)=-j(1)
!$omp end atomic
if(i(1)/=1) print *,'err4'
end subroutine
subroutine ccc
integer::j(1),i(1)
j(1)=-1
!$omp atomic write
i(1)=+(j(1))
!$omp end atomic
if(i(1)/=-1) print *,'err5'
!$omp atomic write
i(1)=-(j(1))
!$omp end atomic
if(i(1)/=1) print *,'err6'
end subroutine
