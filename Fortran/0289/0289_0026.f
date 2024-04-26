        character*10 c1,c2,c4(3)
        character*18 c3
        c1='0000000000'
        c2='1111111111'
        c4(1)=c1
        c4(2)=c2
        call sub(c4,c3)
        print *,c3
        if(c4(3).ne.'0000011111') then
          print *,'*** program ng ***'
        else
          print *,'*** program ok ***'
        endif
        call sub(c4,c3)
        print *,c3
        end
        subroutine sub(c0,cc)
          character*(*) c0(3),cc
          character*12  sc
          sc='*** program '
          c0(3)(1:10)=c0(1)(1:5)//c0(2)(6:10)
          if(c0(1)(6:10).ne.c0(3)(1:5)) then
            cc=sc//'ng ***'
          else
            cc=sc//'ok ***'
          endif
        end
