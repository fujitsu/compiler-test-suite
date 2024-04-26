
                       double precision s
                       integer*8 SC9/13_8/
                       do s=1,100,2
                           SC9=14_1*(-(1_1)-MODULO(SC9,2_8))
                           CYCLE
                        end do
                        if( SC9 .EQ. -14) then
                           print *,'ok'
                        else
                           print *,'ng'
                        endif
                        end
