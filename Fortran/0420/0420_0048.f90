integer:: ios
k=-1
inquire(UNIT=k, iostat=ios)
write(1,*)ios
print *,'pass'
end
