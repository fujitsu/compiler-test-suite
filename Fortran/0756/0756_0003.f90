         character(kind=1)  file(2)*8
         data  file(1) / 4_' 10  11 ' /
         data  file(2) / 4_' 12  13 ' /
         read( file,'(2i4)') i,j,k,l
         print *, i, j, k, l
         end
