PROGRAM MAIN
INTEGER*4,parameter::para = -2_4
LOGICAL::frontres = IS_IOSTAT_EOR(para)
logical::backres
integer*4::kinfront = kind(is_iostat_EOR(para))
integer*4::kinback
kinback = kind(is_iostat_EOR(para))
backres = is_iostat_EOR(para)

if (frontres.eqv.backres) then
print*," I4->L2 OK"
else
print*," I4->L2 ERROR"
endif

call check1(kinfront,kinback)
END

      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine
