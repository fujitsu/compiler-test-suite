Module Types
    Type LinkedList
        Character, pointer, dimension (:):: Alphanumeric
        Integer, pointer, dimension (:):: Numeric
        Type (LinkedList), pointer:: Next
    End type LinkedList
End module Types
Module AddM
Contains
    Recursive subroutine Add (Host, Depth)
        use Types
        Implicit none
        Type (LinkedList), pointer:: Host
        Integer, intent (In):: Depth

        Integer:: Item

        If (Depth <= 10) then
            Allocate (Host)
            Nullify (Host % Next)
            Allocate (Host % Alphanumeric (Depth + 20), Host % Numeric (Depth + 20))
            Do Item = 1, Depth + 20
                Host % Alphanumeric (Item) = Char (IChar ("A") - 1 + Depth + Item)
                Host % Numeric      (Item) =                   - 1 + Depth + Item
            End do
            Call Add (Host % Next, Depth + 1)
        End if
    End subroutine Add
End module AddM
Module DisplayM
Contains
    Recursive subroutine Display (Client, Depth)
        Use Types
        Implicit none
        Type (LinkedList), pointer:: Client
        Integer, intent (In):: Depth

        If (Associated (Client)) then
            write(4,*) "Client at depth ", Depth, ":"
            write(4,*) '"', Client % Alphanumeric, '"'
            write(4,*) Client % Numeric
            Call Display (Client%next, Depth + 1)
        Endif
        End subroutine Display
End module DisplayM
Program Debug
    Use AddM
    Use DisplayM
    Use Types
    Implicit none

    Type (LinkedList), pointer:: Root

    Call Add (Root, 1)
    Call Display (Root, 1)
print *,'pass'
End program
