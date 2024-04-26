call sub()
    print *,"pass"
end
subroutine sub()
integer nnn, iii
common /com1/ jjj,kkk
common /com2/ iii1,jjj1,kkk1
save
!$OMP THREADPRIVATE(nnn)
!$OMP THREADPRIVATE(/com1/,iii,/com2/)
end subroutine
