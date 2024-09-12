       subroutine sub(aaa,lower1,upper1)
         integer :: lower1,upper1
         integer(4),dimension(lower1:upper1)::aaa
         print *,aaa
       !$omp parallel firstprivate(aaa)
           aaa = (/100,200/)
           if (all(aaa/=(/100,200/))) print *,'err'
       !$omp end parallel
       end subroutine

print *,'pass'
end
