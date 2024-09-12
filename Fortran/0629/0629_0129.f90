complex(4), dimension(20,20):: g,h,i
integer :: x,y
g = 1
!$OMP PARALLEL
!$OMP WORKSHARE
!$OMP CRITICAL (x1)
        h = transpose(g)
!$OMP END CRITICAL (x1)
!$OMP END WORKSHARE
!$OMP END PARALLEL
        i = transpose(g)
        do x=1,20
                do y=1,20
                        if(h(x,y).ne.i(x,y))then
                                print *,"ERROR"
                                go to 1
                        endif
                enddo
        enddo
print *,"OK"
1       print *,"end"
end
