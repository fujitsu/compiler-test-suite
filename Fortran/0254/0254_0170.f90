program pro
  associate(asc=>norm2([real(8)::3.0,4.0]))
  if(kind(asc) .ne. 8) print*,"121"
  if(asc .ne. 5) print*,"122"
  end associate
print*,"pass"
end
