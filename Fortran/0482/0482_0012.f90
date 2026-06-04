call test01()
print *,'pass'
end

subroutine test01()
complex :: c
ii=1
c=(1.0,0.0)
!$omp atomic write
c%im=c
!$omp atomic write
c=max(c%im,1.0)
!$omp atomic write
c=max(c%re,c%im)
ii=ii
end
