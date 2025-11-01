program Tebak_Angka;    //nama program
uses crt;               //memanggil unit crt

var
    secret_num,tebakan:integer; //variabel yang digunakan

label selesai,cobalagi; //label yang digunakan

begin       //mulai
    clrscr; //membersihkan teks di terminal

    randomize();    //mengacak random number generator setiap kali program dimulai

    secret_num:= random(20);    //memilih bilangan acak sesuai jarak(range) yg ditentukan
    
    writeln('Tebak-tebak Angka!!!');                        //Menampilkan
    writeln('---------------------------------------');     //judul program
    cobalagi:                                     //label untuk kembali jika player salah menebak angka
    write('Masukkan angka tebakan Anda antara 0 sampai 20 : ');     //menampilkan tulisan agar user menginput angka
    read(tebakan);                                                  //dan menyimpan ke variabel tebakan
    
    if tebakan = secret_num then                        //Jika tebakan benar
        begin                                           //maka
            writeln('Horeeeee! Anda benar :D');         //menampilkan tulisan berikut
            goto selesai;                               //dan pergi ke label selesai
        end                                             //--------------------------------------
    else if tebakan < secret_num then                   //jika tebakan lebih kecil 
        begin                                           //maka
            writeln('Tebakan Anda terlalu kecil :v');   //menampilkan tulisan berikut
            goto cobalagi;                              //dan pergi ke label cobalagi
        end                                             //--------------------------------------
    else                                                //jika tebakan lebih besar
        begin                                           //maka
            writeln('Tebakan Anda terlalu besar');      //menampilkan tulisan berikut
            goto cobalagi;                              //dan pergi ke label cobalagi
        end;                                            //---------------------------------------

    selesai:                    //Label selesai

end.                //selesai
