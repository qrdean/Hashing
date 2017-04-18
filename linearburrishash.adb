with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Strings.Equal_Case_Insensitive; use Ada.Strings;
with URandInt;
procedure LinearBurrisHash is
   type string16 is new string(1..16);
   --hashtable
   data : string(1..16);
   FileName : String := "words.txt";
   file : ada.text_io.file_type;
   KountPeeks :Integer := 0;
   n : Integer;
   Count : integer;
   Countable : Integer;
   Percent : Integer;

begin
   Put_line("Give me n where 2 to the n is The Table Size ");
   Get(N);
   Put("Give me sugar ");
   Get(Percent);
   put(percent,0); put("%"); new_line;
   Count := Integer(Float(2**N)*Float(Percent)/Float(100));
   Ada.Text_IO.Open(File => File,
                    Mode => Ada.Text_IO.In_File,
                    Name => FileName);
   declare
   --Data : String (1..16);
   package RandomOffset is new URandInt(n); use RandomOffset;
   HT : array(1..(2**n)) of String(1..16) := (others => "                ");
   length : integer;
   Sum, HA : Integer;
   FMinPeeks : Integer := 129;
   FMaxPeeks : Integer := 1;
   FAvgPeeks : Float := 0.0;
   FTotalPeeks : Integer := 0;
   LMinPeeks : Integer := 129;
   LMaxPeeks : Integer := 1;
   LAvgPeeks : Float := 0.0;
   LTotalPeeks : Integer := 0;
   begin
   for i in 1..count loop
   --Put("Give me a 16 character string: ");
   data :=Ada.Text_IO.get_line(file);
   Sum := character'pos(data(2))
      + character'pos(data(15))
        + Character'Pos(Data(12))*Character'Pos(Data(13))*10;
   HA := abs(Sum) mod 128;
   Kountpeeks := 1;
   initialRandInteger;
   While(KountPeeks <= (2**n)) Loop
      if HT(HA) = Data then
         Put("key exists!"); New_Line;
         exit;
      elsif HT(HA) = "                " then
         HT(HA) := Data;
         exit;
      else
         KountPeeks := KountPeeks +1;
         HA := HA + 1;
         if HA > (2**n) then
            HA := HA - (2**n);
         end if;
      end if;
   end loop;
   end loop;


      New_Line;
      Put("Hash Table"); New_Line;
      for I in 1..2**N loop
         put(i,0); put(" | ");
         Put(HT(I)); New_Line;
      end loop;
      Close(File);
      Ada.Text_Io.Open(File => File,
                    Mode => Ada.Text_IO.In_File,
                    Name => FileName);
      new_line; put("First 30"); new_line;
      for I in 1..30 loop
         Data :=Ada.Text_IO.Get_Line(File);
         put(data);
         Sum := character'pos(data(2))
              + character'pos(data(15))
              + Character'Pos(Data(12))*Character'Pos(Data(13))*10;
         HA := Abs(Sum) mod 128;
         Kountpeeks := 1;
         InitialRandInteger;
         loop
            if HT(HA) = Data then
               Put(" exists!");
               Put("It passed "); put(kountpeeks,0); put(" times"); new_line;
               if KountPeeks <= Fminpeeks then
                  FMinPeeks := KountPeeks;
               end if;
               exit;
            else
               HA := HA + 1;
               KountPeeks := KountPeeks +1;
               if HA >= (2**N) then
                  HA := HA - (2**N);
               end if;
            end if;
         end loop;
         if Kountpeeks > FmaxPeeks then
               Fmaxpeeks := Kountpeeks;
            end if;
            if KountPeeks <= Fminpeeks then
               FMinPeeks := KountPeeks;
            end if;
         FTotalPeeks := FTotalPeeks + KountPeeks;
      end loop;
      for I in 31..Count-30 loop
         Data :=Ada.Text_IO.get_line(file);
         Sum := character'pos(data(2))
              + character'pos(data(15))
              + Character'Pos(Data(12))*Character'Pos(Data(13))*10;
         HA := Abs(Sum) mod 128;
         Kountpeeks := 1;
         initialRandInteger;
         loop
            if HT(HA) = Data then
               exit;
            else
               HA := HA + 1;
               KountPeeks := KountPeeks +1;
               if HA >= (2**N) then
                  HA := HA - (2**N);
               end if;
            end if;
         end loop;
      end loop;
      new_line;put("Last 30"); new_line;
      for I in 1..30 loop
         Data :=Ada.Text_IO.Get_Line(File);
         put(data);
         Sum := character'pos(data(2))
              + character'pos(data(15))
              + Character'Pos(Data(12))*Character'Pos(Data(13))*10;
         HA := Abs(Sum) mod 128;
         Kountpeeks := 1;
         initialRandInteger;
         loop
            if HT(HA) = Data then
               Put(" exists! ");
               Put("It passed "); Put(Kountpeeks, 0); Put(" times"); New_Line;

               exit;
            else
               HA := HA + 1;
               KountPeeks := KountPeeks +1;
               if HA >= (2**N) then
                  HA := HA - (2**N);
               end if;
            end if;

         end loop;
         if Kountpeeks > LmaxPeeks then
               Lmaxpeeks := Kountpeeks;
         end if;
         if KountPeeks < Lminpeeks then
               LMinPeeks := KountPeeks;
         end if;
         LTotalPeeks := LTotalPeeks + KountPeeks;
      end loop;

      Put("FTotal peeks = "); Put(FTotalPeeks,0); new_line;
      put("LTotal peeks = "); Put(LTotalPeeks,0); new_line;
      FAvgPeeks := Float(FTotalPeeks)/Float(30);
      LAvgPeeks := Float(LTotalPeeks)/Float(30);
      Put("First 30 Max Passes = "); Put(FMaxPeeks,0); new_line;
      Put("First 30 Min Passes = "); Put(FMinPeeks,0); new_line;
      Put("First 30 Average Passses = "); Put(float'image(FAvgPeeks)); new_line;
      New_Line;
      Put("Last 30 Max Passes = "); Put(LMaxPeeks,0); new_line;
      Put("Last 30 Min Passes = "); Put(LMinPeeks,0); new_line;
      Put("Last 30 Average Passses = "); Put(float'image(LAvgPeeks)); new_line;
   end;
   close(file);
end;

