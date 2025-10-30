program TokoCici; //nama program
uses crt; //memanggil unit crt

var                                                             //    
    buku,pulpen,pensil,penghapus,penggaris,potongan : integer;  //variabel yang digunakan
    total,total_bersih,diskon,pajak : real;                     //
    mtd_bayar : char;                                           //

label bayar;    //label yang digunakan

const                       //
    hrg_buku = 25000;       //
    hrg_pulpen = 5000;      //
    hrg_pensil = 3000;      //konstanta yang digunakan
    hrg_penghapus = 2000;   //
    hrg_penggaris = 4000;   //

begin       //mulai
    clrscr;     //membersihkan teks di terminal
    writeln('Harga buku = Rp25.000');           //
    writeln('Harga pulpen = Rp5.000');          //
    writeln('Harga pensil = Rp3.000');          //Menampilkan Daftar barang dan harganya di layar
    writeln('Harga penghapus = Rp2.000');       //
    writeln('Harga penggaris = Rp4.000');       //

    write('Masukkan jumlah buku : ');           //
    read(buku);                                 //
    write('Masukkan jumlah pulpen : ');         //
    read(pulpen);                               //
    write('Masukkan jumlah pensil : ');         //User menginput jumlah barang yang akan dibeli
    read(pensil);                               //dan disimpan ke variabelnya masing-masing
    write('Masukkan jumlah penghapus : ');      //
    read(penghapus);                            //
    write('Masukkan jumlah penggaris : ');      //
    read(penggaris);                            //

    total := (buku*hrg_buku)+(pulpen*hrg_pulpen)+(pensil*hrg_pensil)+(penghapus*hrg_penghapus)+(penggaris*hrg_penggaris);                   //menghitung total awal belanja

    writeln('Metode pembayaran : ');            //
    writeln('[1] QRIS');                        //Menampilkan metode pembayaran yang tersedia
    writeln('[2] Tunai');                       //

    bayar:                                      //label bayar jika user memasukkan input yang tidak sesuai
    write('Bayar dengan ? [1/2] : ');           //User memilih metode pembayaran
    readln(mtd_bayar);                          //

    if mtd_bayar = '1' then                     //----------------------------------------------
        begin                                   //Jika user menginput 1, berarti menggunakan QRIS
            potongan := 5000;                   //dan mendapat potongan sebanyak Rp5.000
        end                                     //----------------------------------------------
    else if mtd_bayar = '2' then                //Jika user menginput 2, berarti menggunakan tunai
        begin                                   //dan dikenakan pajak 5 persen
            pajak := total*0.05;                //
        end                                     //-----------------------------------------------
    else                                        //
        begin                                   //Jika user menginput selain 1 dan 2
            writeln('Ketik 1 atau 2');          //maka menampilkan tulisan tersebut
            goto bayar;                         //dan kembali ke label bayar di atas
        end;                                    //
    
    if total >= 100000 then                     //Jika total belanja Rp100.000 atau lebih
        diskon := total*0.1;                    //maka mendapat diskon 10 persen
        
    total_bersih := total - diskon - potongan + pajak;      //menghitung total akhir

    clrscr;                 //membersihkan teks di terminal
    writeln('Total harga sebelum diskon = Rp',total:0:0);       //menampilkan total awal
    writeln('Seluruh potongan dan diskon = Rp',potongan + diskon:0:0);  //menampilkan total diskon dan potongan yang didapat
    writeln('Total akhir = Rp',total_bersih:0:0);       //Menampilkan total akhir belanja
    
end.    //selesai
    