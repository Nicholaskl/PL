with Ada.Text_IO; use Ada.Text_IO;

procedure bubblesort is
    package IO renames Ada.Text_IO;
    A: array(0 .. 4) of Natural := (3, 2, 5, 4, 1);
    temp : integer:= 0;
begin
    For1 : for I in reverse A'Range loop
        For2 : for J in A'First ..I loop
            if A(I) < A(J) then
                temp := A(J);
                A(J) := A(I);
                A(I) := temp;
            end if;
        end loop For2;
    end loop For1;

    ForPrint : for K in A'Range loop
        IO.Put_Line(Integer'Image(A(K)));
    end loop ForPrint;
end bubblesort;
