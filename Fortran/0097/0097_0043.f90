character(3),pointer::p(:,:)
        character(3),target::t(3,3)=reshape(['111','222','333','444','555','666','777','888','999'],[3,3])
          p=>t(1:3,1:3)
        call ss(p(:,:)(1:2))
        if(t(1,1).ne.'aa1')print*,"101"
        if(t(2,1).ne.'aa2')print*,"102"
        if(t(3,1).ne.'aa3')print*,"103"
        if(t(1,2).ne.'aa4')print*,"104"
        if(t(2,2).ne.'aa5')print*,"105"
        if(t(3,2).ne.'aa6')print*,"106"
        if(t(1,3).ne.'aa7')print*,"104"
        if(t(2,3).ne.'aa8')print*,"105"
        if(t(3,3).ne.'aa9')print*,"106"


        print *,'pass'
        contains
        subroutine ss(a )
        character(*),contiguous::a(:,:)
        if(len(a).ne.2)print*,"101"
        if (loc(t).eq.loc(a)) print *,201,loc(t),loc(a)
        a = 'aa'
        end subroutine
       end

