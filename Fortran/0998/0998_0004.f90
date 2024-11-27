
subroutine sub(i1)
!$pragma STDCALL(sub)
character*(*) i1
entry sub1(i1)
!$pragma STDCALL(sub1)
entry sub2(i,i1)
!$pragma STDCALL(sub2)
end


interface
subroutine sub(i1)
!$pragma STDCALL(sub)
character*(*) i1
end subroutine
end interface
end

subroutine aub(i1,i)
!$pragma STDCALL(aub)
character*(i) i1
character*(1) i2
entry aub1(i2,i)
!$pragma STDCALL(aub1)
entry aub2(i,i1)
!$pragma STDCALL(aub2)
end

subroutine bub(i1,i)
!$pragma C(bub)
character*(*) i1
entry bub1(i1,i)
!$pragma C(bub1)
entry bub2(i,i1)
!$pragma C(bub2)
end
