       character*3 a
       character*(10) b
       character*(4) c(3)
       character*5 d

       call sub1(a)
       call sub2(b)
       call sub3(c)
       stop
       end

       subroutine sub1(ch3)
       character*3 ch3
       ch3 = 'a'
       end

       subroutine sub2(chv)
       character*(*) chv
       chv = 'a'
       end

       subroutine sub3(cha)
       character*(4) cha(3)
       cha(1) = 'a'
       end

       subroutine sub4(fch)
       character*5 fch,ch5
       external fch
       ch5 = fch()
       end
