       dimension idim(1,2,3,4,5,6,7)
       dimension idim1(1,1,1,1,1,1,1)
       dimension idim2(2,2,2,2,2,2,2)
       idim1(1,1,1,1,1,1,1) = 1
       idim2(2,2,2,2,2,2,2) = 2
       print *,idim1(1,1,1,1,1,1,1)
       print *,idim2(2,2,2,2,2,2,2)
       call sub(idim,1,2,3,4,5,6,7)
       end

       subroutine sub(idim,ia,ib,ic,id,ie,if,ig)
       dimension idim(ia,ib,ic,id,ie,if,ig)
       idim(ia,ib,ic,id,ie,if,ig)=3
       end
