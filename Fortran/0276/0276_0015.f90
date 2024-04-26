interface 
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg
        end function
end interface

integer,target::trg=1000,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
COMPLEX(KIND=4)::X,Y,Z
X=(100.566, 10.1)
Y=(200.789,20.2)
Z=(300.123,30.3)
OPEN( 25, FILE='fort.1', ACCESS='SEQUENTIAL', FORM='FORMATTED' )
        write( 25,FMT=* ) X
        write( 25,FMT=* ) Y
        write( 25,FMT=* ) Z
backspace(UNIT=25,IOSTAT = ii, IOMSG =ctrg1)
backspace(UNIT=25,IOSTAT = fun(trg), IOMSG =  cfun(ctrg))
CLOSE (25,status="delete" )
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
print *,"Pass"
end
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        fun=>trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
