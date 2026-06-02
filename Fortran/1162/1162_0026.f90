        character :: rsrc
        k=1
                  associate (rsrc =>k+1)
                    if (rsrc      /=2) print *,1000
                  block
                    real :: cSum(rsrc)
                    real :: a   (1+1)
                    if (size(cSum)/=2) print *,1001
                    if (size(a   )/=2) print *,1002
                    cSum=1
                    if (any(cSum/=1)) print *,9001
                    a=3
                    if (any(a/=3)) print *,9002
                  end block
                 end associate
print *,'sngg750n : pass'
         end

