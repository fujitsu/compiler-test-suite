character(3),pointer::p(:,:)
character(3),pointer::p2(:,:)
        character(3),target::t(3,3)=reshape(['111','222','333','444','555','666','777','888','999'],[3,3])
        character(3),target::t2(3,3)=reshape(['111','222','333','444','555','666','777','888','999'],[3,3])
          p=>t(1:3,1:3)
          p2=>t2(1:3:2,1:3:2)
        call ss(p(:,:)(1:2),p2(:,:)(1:2))
        if(t(1,1).ne.'aa1')print*,"101"
        if(t(2,1).ne.'aa2')print*,"101"
        if(t(3,1).ne.'aa3')print*,"101"
        if(t(3,3).ne.'aa9')print*,"101"
        if(t2(1,1).ne.'bb1')print*,"101"
        if(t2(2,1).ne.'222')print*,"101"
        if(t2(3,1).ne.'bb3')print*,"101"
        if(t2(3,3).ne.'bb9')print*,"101"
        if(t2(1,3).ne.'bb7')print*,"101"
        if(t2(3,1).ne.'bb3')print*,"101"
        print *,'pass'
        contains
        subroutine ss(a , b)
        character(2),contiguous::a(:,:)
        character(2),contiguous::b(:,:)


        if(len(a).ne.2)print*,"101"
        if(len(b).ne.2)print*,"101"
        if (loc(t).eq.loc(a)) print *,201,loc(t),loc(a)
        if (loc(t2).eq.loc(b)) print *,201,loc(t2),loc(b)
        a = 'aa'
        b = 'bb'
        end subroutine
       end

        
