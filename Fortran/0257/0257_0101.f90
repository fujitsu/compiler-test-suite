interface 
        subroutine ss(a , b,c,d)
        character(2)::a(3,3)
        character(2)::b(2,2)
        integer*4::c
        integer*4::d
        end subroutine
end interface
character(2),pointer::p(:,:)
character(2),pointer::p2(:,:)
character(2),target::t(3,3)=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
character(2),target::t2(3,3)=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
        integer*4::c
        integer*4::d
          p=>t(1:3,1:3)
          p2=>t2(1:3:2,1:3:2)
c =loc(t)
d =loc(t2)
        call ss(p(:,:)(1:2),p2(:,:)(1:2),c,d)
        if(any(t.ne.'xx'))print*,'101'
        if(t2(1,1).ne.'yy')print*,'102'
        if(t2(2,1).ne.'22')print*,'102'
        if(t2(3,3).ne.'yy')print*,'102'
        print *,'pass'
       end
        subroutine ss(a , b,c,d)
        character(2)::a(3,3)
        character(2)::b(2,2)
        integer*4::c
        integer*4::d
        if(len(a).ne.2)print*,"101"
        if(len(b).ne.2)print*,"101"
        if (c.ne.loc(a)) print *,201,loc(t),loc(a)
        if (d.eq.loc(b)) print *,202,loc(t2),loc(b)
        a ='xx'
        b = 'yy'
        end subroutine

