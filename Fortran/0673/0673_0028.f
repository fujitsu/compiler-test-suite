       intrinsic index
       write(6,*) '                  **'
       write(6,*) ' ** next value is output ok ok ok **'
       write(6,*) ' ***********************************'
       write(6,*) ' *  7   9                          *'
       write(6,*) ' *  7   0                          *'
       write(6,*) ' *  0   0                          *'
       write(6,*) ' *  0   0                          *'
       write(6,*) ' ***********************************'
       call sub(index)
       stop
       end
       subroutine sub(aaaa)
       integer*4 aaaa
       character*20 ch20
        character*10 ch10
       character*1  ch1
       character*2 ch2
       ch10='abcdefghij'
       ch1='g'
        ch2='ij'
       i=aaaa(ch10,ch1)
       ii=aaaa(ch10,ch2)
       write(6,10) i,ii
 10     format(2i10)
       ch2='ah'
       ii=aaaa(ch10,ch2)
       write(6,10) i,ii
         ch1='x'
         ch2='xy'
        i=aaaa(ch10,ch1)
        ii=aaaa(ch10,ch2)
        write(6,10)i,ii
        ch20='abcdefghijklmnopqr'
        i=10
        ii=20
        ii=aaaa(ch10,ch20)
        i=aaaa(ch10,ch20)
        write(6,10)i,ii
        return
        end
