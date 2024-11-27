         subroutine s1() bind(c,NAME='ss1')
            implicit none
            entry ent() bind(c,NAME='ss2')
           return
           entry ent() bind(c,NAME='ss3')
          return
        end subroutine
  end

