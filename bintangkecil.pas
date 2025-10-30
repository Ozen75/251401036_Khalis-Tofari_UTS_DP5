program bintangkecil;       //nama program
uses crt;                   //memanggil unit crt

var i,j,k,l : integer;      //variabel yang digunakan

begin                       //mulai
    clrscr;                 //membersihkan teks di terminal
    
    for i := 1 to 3 do              //for untuk baris vertikal 
        begin                       //
            for j := 1 to i do      //for untuk baris horizontal
            begin                   //
                write('*');         //menampilkan * selama for terpenuhi
            end;                    //
            writeln('');            //membuat baris baru untuk bentuk bintang selanjutnya
        end;                        //

    for k := 8 downto 6 do          //for untuk baris vertikal
    begin                           //
        for l := 1 to k do          //for untuk baris horizontal
        begin                       //
            write('*');             //menampilkan * selama for terpenuhi
        end;                        //
        writeln('');                //membuat baris baru untuk bentuk bintang selanjutnya
    end;                            //

    for k := 7 to 8 do              //for untuk baris vertikal
    begin                           //
        for l := 1 to k do          //for untuk baris horizontal
        begin                       //
            write('*');             //menampilkan * selama for terpenuhi
        end;                        //
        writeln('');                //membuat baris baru untuk bentuk bintang selanjutnya
    end;                            //
end.        //selesai