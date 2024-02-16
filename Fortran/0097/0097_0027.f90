        integer,pointer :: ptr(:)
        integer,pointer :: ptr2(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer,target:: trg2(5) = [1,2,3,5,4]
         integer::k=1
         if (k==1) then
          ptr=>trg(1:3)
          ptr2=>trg2(1::2)
        else
          ptr=>trg(1::2)
          ptr2=>trg2(1:3)
         endif
          call s1_int(ptr(:),ptr2(:))
          print*,"Pass"
        contains
         subroutine s1_int(dmy,dmy2)
        integer,contiguous::dmy(:)
        integer,contiguous::dmy2(:)


           if(loc(dmy).ne.loc(trg))print *,201,loc(dmy),loc(trg)
           if(loc(dmy2).eq.loc(trg2))print *,202,loc(dmy2),loc(trg2)
         end subroutine
        end

