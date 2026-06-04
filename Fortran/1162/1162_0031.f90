         integer :: sss(5)=[1,2,3,4,5]
         k=2
       associate (isrc =>sss(k))
           if (isrc/=2) print *,1001
            isrc=3
           if (isrc/=3) print *,1001
            k=4
           if (isrc/=3) print *,1001
           call sub(isrc)
           if (isrc/=5) print *,1001
       end associate
print *,'sngg922n : pass'
end
subroutine sub(n)
n=5
end
