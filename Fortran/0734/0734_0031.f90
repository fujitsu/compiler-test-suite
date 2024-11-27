    parameter(MaxFNLen=10)
    Type File_Reference_Description
        Character (Len = MaxFNLen):: Name
        Character, pointer, dimension (:):: Text
        Integer, pointer, dimension (:, :):: Bound
        Integer:: ILine, IText, NLine, NText
        Character:: Open, Close
    End type File_Reference_Description

    type(File_Reference_Description) :: X
    X%Name='123456789a'
    allocate(X%Text(2))
    X%Text=(/'a','b'/)
    allocate(X%Bound(3,2))
    X%Bound=reshape((/100,200,300,400,500,600/),(/3,2/))
    X%ILine = 1001
    X%IText = 1002
    X%NLine = 1003
    X%NText = 1004
    X%Open  = 'X'
    X%Close= 'Z'
    write(1,*)X%Name
    write(1,*)X%Text
    write(1,*)X%Bound
    write(1,*)X%ILine
    write(1,*)X%IText
    write(1,*)X%NLine
    write(1,*)X%NText
    call sub
    print *,'pass'
    end
    subroutine sub
    character*10 a1
    integer x(6)
    rewind 1
    read(1,'(1x ,a)') a1;if (a1/='123456789a')print *,'error-1'
    read(1,'(1x ,a)') a1;if (a1/='ab')print *,'error-2'
    read(1,*) x;if (any(x/=(/100,200,300,400,500,600/)))print *,'error-3'
    read(1,*) x(:4);if (any(x(1:4)/=(/1001,1002,1003,1004/)))print *,'error-4'
end
