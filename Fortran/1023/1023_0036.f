       character*(20) ch
       character*10 cha(4)
       call sub(ch,cha)
       stop
       end

       subroutine sub(ch , cha)
       character*(*) ch
       character*10 cha(4)
       ch = '1'
       cha(2) = '1'
       end
