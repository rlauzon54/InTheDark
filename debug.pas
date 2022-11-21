{ debugging code }

{ Debug print room co-ordinates}
Procedure WriteRoom(Debug: Room; L: Integer);
Begin
  GotoXY(1, L);
  Write('R X1: ');
  Write(Debug.X1);
  Write(' Y1: ');
  Write(Debug.Y1);
  Write(' X2: ');
  Write(Debug.X2);
  Write(' Y2: ');
  WriteLn(Debug.Y2);
End;

Procedure WriteDoor(Debug:Door; L: Integer);
Begin
  GotoXY(1, L);
  Write('D X: ');
  Write(Debug.X);
  Write(' Y: ');
  Write(Debug.Y);
  Write(' Room1I: ');
  Write(Debug.Room1I);
  Write(' Room2I: ');
  WriteLn(Debug.Room2I);
End;


Procedure WriteItem(Debug:Item; L:Integer);
Begin
  GotoXY(1, L);
  Write('I X: ');
  Write(Debug.X);
  Write(' Y: ');
  Write(Debug.Y);
  Write(' L: ');
  Write(Debug.L);
  Write(' D1: ');
  Write(Debug.D1);
  Write(' D2: ');
  Write(Debug.D2);
  Write(ChSpace);
  Write(Adjective[Debug.D2]);
  Write(ChSpace);
  WriteLn(Noun[Debug.D1]);
End;

Procedure WriteMonster(Debug:Monster; L:Integer);
Begin
  GotoXY(1, L);
  Write('M X: ');
  Write(Debug.X);
  Write(' Y: ');
  Write(Debug.Y);
  Write(' DX: ');
  Write(Debug.DX);
  Write(' DY: ');
  Write(Debug.DY);
  Write(' Room: ');
  WriteLn(Debug.Room);
End;

Procedure DebugAll();

Var
  L: Integer;
  I : Integer;
Begin
  L := 1;
  For I := 0 To RoomI Do
    WriteRoom(Rooms[I], L + I);
  L := L + I + 1;
  For I := 0 To DoorI Do
    WriteDoor(Doors[I], L + I);
  L := L + I + 1;
  For I := 0 To ItemI Do
    WriteItem(Items[I], L + I);
  L := L + I + 1;
  For I := 0 To MonsterI Do
    WriteMonster(Monsters[I], L + I);
End;
