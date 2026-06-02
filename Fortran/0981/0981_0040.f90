call sub()
print *,"pass"
end
subroutine sub()
save
pointer (ip2,var2)

!$omp threadprivate(ip2,iii)
!$omp parallel default(firstprivate) 
if (1.eq.2) then 
if (var2.ne.2) write(6,*) "NG"
iii=1
endif
!$omp endparallel

end
