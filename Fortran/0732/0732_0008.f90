        dimension a(10)
        data a/10*0/
        do 1 i=1,9
        j=i+1
1       a(j)=a(i)+1
        write(3,*)a
        print *,'pass'
        end
