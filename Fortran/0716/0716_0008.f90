interface
function ppp()
integer   ::ppp(10)
endfunction
end interface
integer i(10)
i=ppp()
end
function ppp()
integer ::ppp(10)
ppp=1
end
