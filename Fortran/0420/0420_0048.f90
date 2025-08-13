integer:: ios
k=-1
inquire(UNIT=k, iostat=ios)
write(14,*)ios
print *,'pass'
end
