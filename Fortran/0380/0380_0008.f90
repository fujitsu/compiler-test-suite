    character  line(4)*16
    data  line(1) / ' 81  81 ' /
    data  line(2) / ' 82  82 ' /
    data  line(3) / ' 83  83 ' /
    data  line(4) / ' 84  84 ' /
    read(line,'(2I4)') i,j,k,l,m,n
    print *, i,j,k,l,m,n
    end
