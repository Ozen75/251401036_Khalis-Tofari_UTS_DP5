program fibonacci;      //nama program
uses crt;               //memanggil unit crt

var n,i,fbnc,first,second,jumlah : integer;     //variabel yang digunakan

begin       //mulai
    clrscr;         //membersihkan teks di terminal
    jumlah:=1;      //menginisiasikan nilai awal jumlah, saya masukkan 1 karena entah kenapa hasil penjumlahannya selalu kurang satu
    first:=0;       //menginisiasikan nilai awal bilangan pertama
    second:=1;      //menginisiasikan nilai awal bilangan kedua
    write('Masukkan nilai n : ');       //user menginput nilai n
    read(n);                            //dan disimpan ke variabel n

    write(first,',',second);            //menampilkan angka suku pertama dan kedua
    for i := 3 to n do                  //for untuk suku ketiga dan seterusnya
    begin                               //
        fbnc:=(first)+(second);         //bilangan ketiga merupakan jumlah dari bilangan pertama dan kedua   
        jumlah:=jumlah+fbnc;            //hasil fibonacci dikumpulkan di variabel jumlah
        write(',',fbnc);                //menampilkan bilangan fibonacci
        first:=second;                  //memasukkan nilai bilangan kedua ke pertama
        second:=fbnc;                   //dan bilangan kedua menjadi bilangan hasil penjumlahan sebelumnya
    end;
    writeln('');//membuat baris baru
    writeln('Jumlah = ',jumlah);//menampilkan hasil penjumlahan setiap suku fibonacci dan perulangan for di atas
end.//selesai
