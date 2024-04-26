subroutine fred (a, b, sin)
external sin
call bill (a, sin)
end

subroutine sin
  print *,'pass'
end

subroutine bill(a,sin)
  external sin
  call sin
end

external sin
call fred(a,b,sin)
end
