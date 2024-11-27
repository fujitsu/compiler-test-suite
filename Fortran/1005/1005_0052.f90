interface 
function ppp()
integer,pointer ::ppp
endfunction
end interface
i=ppp()
end
function ppp()
integer,pointer ::ppp
ppp=1
end
