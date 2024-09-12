PROGRAM MAIN
INTEGER*4,parameter::para = -1_4
LOGICAL::frontres = IS_IOSTAT_END(para)
logical::backres
integer*4::kinfront = kind(is_iostat_end(para))
integer*4::kinback
backres = is_iostat_end(para)
kinback = kind(is_iostat_end(para))

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
