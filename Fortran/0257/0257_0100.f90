character(4),pointer::p(:)
character(4),pointer::p2(:)
        character(4),target ::t(5)=['1111','2222','3333','4444','5555']
        character(4),target ::t2(5)=['1111','2222','3333','4444','5555']
          p=>t(1:3:2)
          p2=>t2(1:5:2)
        call ss(p(:)(1:2),p2(:)(1:3))
        if (any(t/=['aa11','2222','aa33','4444','5555'])) print *,109,t
        if (any(t2/=['bbb1','2222','bbb3','4444','bbb5'])) print*,109,t2
        print *,' pass'
        contains
        subroutine ss(a , b)
        character(2)::a(2)
        character(*)::b(3)
        if(len(a).ne.2)print*,"101"
        if(len(b).ne.3)print*,"101"
        if (loc(t).eq.loc(a)) print *,201,loc(t),loc(a)
        if (loc(t2).eq.loc(b)) print *,201,loc(t2),loc(b)
        a = 'aa'
        b = 'bbb'
        end subroutine
       end

