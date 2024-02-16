character(2),pointer::p(:,:)
character(2),pointer::p2(:,:)
 character(2),target::t(3,3)=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
 character(2),target::t2(3,3)=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
          p=>t(1:3,1:3)
          p2=>t2(1:3:2,1:3:2)
        call ss(p(:,:)(1:2),p2(:,:)(1:2))
        if(any(t.ne.'xx'))print*,'101'
        if(t2(1,1).ne.'yy')print*,'102'
        if(t2(2,1).ne.'22')print*,'102'
        if(t2(3,3).ne.'yy')print*,'102'
        print *,'pass'
        contains
        subroutine ss(a , b)
        character(2),contiguous::a(:,:)
        character(2),contiguous::b(:,:)
        if(len(a).ne.2)print*,"101"
        if(len(b).ne.2)print*,"101"
        if (loc(t).ne.loc(a)) print *,201,loc(t),loc(a)
        if (loc(t2).eq.loc(b)) print *,202,loc(t2),loc(b)
        a ='xx'
        b = 'yy'
        end subroutine
       end

