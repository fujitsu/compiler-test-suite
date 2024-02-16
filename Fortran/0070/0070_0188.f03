complex,pointer::a(:,:,:,:,:,:,:)
allocate(a(1,1,1,1,1,1,1))
a=1
call sss(a)
print *,'pass'
contains
subroutine sss(a)
complex,pointer::a(:,:,:,:,:,:,:)
namelist /nnn/a
write(6,nnn)
end subroutine
end
