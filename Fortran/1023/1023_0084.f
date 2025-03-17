       common aaa 
       character*1 aaa(5)
       call sub()
       call ent(aaa)
       stop
       end

       subroutine sub()
       real b(5)
       character*1 c(5)
       b(1)=1
       return
       entry ent(c)
       c(1)='&'
       call ent2(c)
       d=1
       end

       subroutine sub2()
       character*1 c(5)
       entry ent2(c)
       c(1)='#'
       d=1
       end
