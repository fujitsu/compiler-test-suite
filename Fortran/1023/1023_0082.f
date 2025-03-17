       common aaa 
       character*1 aaa(5)
       call sub(aaa)
       call ent(aaa)
       stop
       end

       subroutine sub(c)
       real b(5)
       character*1 c(5)
       b(1)=1
       return
       entry ent(c)
       c(1)='&'
       end
