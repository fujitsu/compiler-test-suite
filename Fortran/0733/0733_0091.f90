    Integer :: RanSid(1) = -10
    Call Random_Seed (Put = RanSid)
    Do ITry = 1, 10
        Call Random_Number (Sample)
        if (Sample<0) print *,'error-1'
        if (Sample>=1) print *,'error-2'
    End do
print *,'pass'
    End
