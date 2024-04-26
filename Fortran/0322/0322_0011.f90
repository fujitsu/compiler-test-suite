call test()
print *,"pass"
end
subroutine test()
save
common /com1/ i1
common /com6/ i6
common /com7/ i7
common /com8/ i8
common /com9/ i9
!$OMP threadprivate(a1)
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
end subroutine
