call test01(1,1,1,1,1,1,1,1,1)
print *,"pass"
end

subroutine test01(kl, ku, ks,jl, ju, js,il, iu, is)
integer a(1,1,1,1)
!$omp do collapse(2) private(i,j,k)
 do k = kl, ku, ks
   do j = jl, ju, js 
     do i = il, iu, is 
       call bar(a,i,j,k) 
     enddo
   enddo 
 enddo 
!$omp end do
contains
subroutine bar(a,i,j,k)
integer a(1,1,1,1)
end subroutine
end subroutine
