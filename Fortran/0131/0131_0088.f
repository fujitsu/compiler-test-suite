c
       program   snrut3
       character(len=100) c
       character(len=10)  ch1
       character(len=10)  ch2
       data ch1/'+++++++++'/
       data ch2/'++++a++++'/
       call sub( c,ch1,ch2 )
       call disp( c )
       stop
       end
c
       subroutine sub(a,b,c)
       character(len=100) a
       character(len=10)  b , c
       a = b//c
       end
c
       subroutine disp( a )
       character(len=100) a
         if ( a .eq.'+++++++++ ++++a++++') then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
