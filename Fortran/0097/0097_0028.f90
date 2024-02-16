        integer,pointer :: ptr(:)
        integer,pointer :: ptr2(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer,target:: trg2(5) = [1,2,3,5,4]
         integer::k=1
         if (k==1) then
          ptr=>trg(1:5)
          ptr2=>trg2(1::2)
        else
          ptr=>trg(1::2)
          ptr2=>trg2(1:3)
         endif
          call s1_int(ptr(:),ptr2(:))
          if(any(trg.ne.[11,12,13,15,14]))print*,"101"
          if(any(trg2.ne.[11,2,13,5,14]))print*,"102"
          print*,"Pass"
        contains
         subroutine s1_int(dmy,dmy2)
        integer::dmy(:)
        integer::dmy2(:)


           if(loc(dmy).ne.loc(trg))print *,201,loc(dmy),loc(trg)
           if(loc(dmy2).ne.loc(trg2))print *,202,loc(dmy2),loc(trg2)
          call s2_int(ptr,ptr2)
         end subroutine
        subroutine s2_int(dmy,dmy2)


        integer::dmy(5)
        integer::dmy2(3)
           if(loc(dmy).ne.loc(trg))print *,203,loc(dmy),loc(trg)
           if(loc(dmy2).eq.loc(trg2))print *,204,loc(dmy2),loc(trg2)
        dmy = dmy + 10
        dmy2 = dmy2 + 10
         end subroutine
        end

