       interface assignment(=)
        subroutine sub (px,ax)  bind(c,name = "ss1")
        integer, INTENT(out) :: px
        character, INTENT(in) :: ax
       end
       end interface
        integer::a
        character::b
        common /sub/ a,b
        b='A'
        a=b 
        if(a /= 100) print*,"101"
        print*,"PASS"
       end
       subroutine sub (px,ax)  bind(c,name = "ss1")
       integer, INTENT(out) :: px
       character, INTENT(in) :: ax
         integer::d
         character::e
        common /sub/ d,e
        px=100
        if(d .ne.100 .and. e.ne. ax ) print*,"102"
       END

