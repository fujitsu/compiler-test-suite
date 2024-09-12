real (16) a,b
  a=z'00000000000000000000000000000001'
  b=z'00000000000000000000000000000001'
  write(1,fmt='(Z32)') a+b
  write(1,fmt='(Z32)') a-b
  write(1,fmt='(Z32)') a*b
  write(1,fmt='(Z32)') a/b

  a=z'00000000000000000000000000000001'
  b=z'00010000000000000000000000000001'
  write(1,fmt='(Z32)') a+b
  write(1,fmt='(Z32)') a-b
  write(1,fmt='(Z32)') a*b
  write(1,fmt='(Z32)') a/b
  print *,'pass'
end
