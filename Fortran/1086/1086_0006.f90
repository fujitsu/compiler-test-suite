integer :: jjj=1,arr(10)=1
!associate(iii=>jjj+1)
associate(iii=>int(jjj))
i=iii
end associate
print *,'pass'
end
