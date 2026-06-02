        character*10 sub2,a
        a=sub2(1,2)
        end
        function sub2(data1,data2)
        character*(*) sub2,ent2,c3
        integer*4 data1,data2
        sub2="D"
        print *,data1,data2
        return
        entry ent2(c3)
        print *,c3,ent2
        end
