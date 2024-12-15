program Pengecekan_Kesehatan;
uses crt;

type data = record
  nama, ukrling, hasilimt: string;
  jenis: char;
  usia: integer;
  tinggi, massa, lingkar, imt: real;
  end;

var 
 n, i, kodelayanan: integer;
 daftar: array [1..50] of data;

// Subprogram untuk memberikan batasan
procedure batas;
  begin 
   writeln('* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *');
  end;

//Subprogram untuk menampilkan garis 
procedure garis;
 begin 
  writeln('============================================================================================');
 end;

//Deklarasi Keseluruhan Subprogram di awal agar pemanggilan pada masing-masing Subprogram dapat dilakukan
procedure menutama; forward;
procedure informimt; forward;
procedure informlingping; forward;
procedure pengukuran; forward;
procedure tutup; forward;

//Subprogram Menu Utama 
procedure menutama;
  begin 
    repeat 
     clrscr;
     writeln('Program Pengecekan Kesehatan');
     writeln;
     writeln('Selamat datang di Menu Utama!');
     writeln('Berikut adalah layanan yang disediakan oleh program ini.');
     writeln;
     batas;
     writeln('*                           Menu Utama                            *');
     batas;
     writeln('* Kode Layanan  *                 Nama Layanan                    *');
     batas;
     writeln('*       1       *  Informasi Pengukuran Indeks Massa Tubuh (IMT)  *');
     batas;
     writeln('*       2       *      Informasi Pengukuran Lingkar Pinggang      *');
     batas;
     writeln('*       3       *       Pengukuran IMT dan Lingkar Pinggang       *');
     batas;
     writeln;
     writeln('Untuk memilih layanan kesehatan, silakan masukkan kode layanan pada menu di bawah ini!');
     writeln('Untuk menutup program, silakan masukkan "4" pada menu di bawah ini!');
     writeln('Jika kamu memasukkan kode yang tidak dikenali program, program akan mengulangi layanan Menu Utama.');
     write('Masukkan kode layanan : ');
     readln(kodelayanan);
     case (kodelayanan) of 
        1: informimt;
        2: informlingping;
        3: pengukuran;
        4: tutup;
        else
        writeln('Kode yang kamu masukkan tidak valid. Silakan tekan "Enter" untuk memasukkan kembali kode layanan.');
        readln;
     end;
    until kodelayanan = 4;
  end;

//Subprogram Informasi IMT
procedure informimt;
  begin 
    clrscr;
    writeln('Informasi Pengukuran Indeks Massa Tubuh (IMT)');
    writeln;
    writeln('Indeks Massa Tubuh (IMT) atau yang dalam bahasa Inggris disebut Body Mass Indeks (BMI) merupakan suatu alat pengukuran yang digunakan untuk menentukan kondisi tubuh dan berat badan');
    writeln('ideal berdasarkan tinggi badan dan berat badan suatu individu.');
    writeln('Kurang lebih, pengukuran ini dapat menentukan apakah berat badan termasuk dalam kategori normal, kurang, atau berlebihan.');
    writeln('Selain itu, indeks ini dapat digunakan untuk menilai risiko atau masalah kesehatan berdasarkan status kondisi berat badan.');
    writeln('Indeks ini juga dapat digunakan sebagai panduan untuk memantau perkembangan kesehatan dan asupan gizi yang diperlukan oleh tubuh.');
    writeln;
    writeln('Walaupun pengukuran ini merupakan alat ukur yang efektif dalam mengecek kondisi tubuh, indeks ini masih memiliki sejumlah kelemahan, yaitu');
    writeln('- Tidak Membedakan Komposisi Tubuh');
    writeln('  IMT tidak membedakan antara massa otot dan lemak. Seseorang yang memiliki massa otot tinggi (seperti atlet) mungkin memiliki IMT yang tinggi, meskipun tubuhnya sehat.');
    writeln('  Hal ini menyebabkan perhitungan dari indeks ini berkemungkinan menjadi tidak akurat');
    writeln;
    writeln('- Tidak Dapat Membedakan Distribusi Lemak');
    writeln('  IMT tidak memberikan informasi tentang di mana lemak tubuh disimpan, padahal distribusi lemak, seperti lemak perut, memiliki implikasi kesehatan yang berbeda.');
    writeln;
    writeln('- Tidak Memperhatikan Variabilitas dan Kondisi Kesehatan dari Individu ');
    writeln('  Faktor seperti usia dan jenis kelamin dapat mempengaruhi kondisi kesehatan seseorang.');
    writeln('  IMT juga tidak mempertimbangkan faktor kesehatan lainnya, seperti riwayat medis, gaya hidup, dan faktor genetik.');
    writeln;
    writeln('Oleh karena itu, sangat disarankan untuk berkonsultasi dengan ahli kesehatan untuk melakukan pemeriksaan kondisi tubuh dalam mengiringi penggunaan indeks ini.');
    write('Jika kamu sudah selesai membaca informasi mengenai indeks tersebut, kamu dapat menekan tombol "Enter" untuk kembali ke menu utama. ');
    readln;
  end;

//Subprogram Informasi Pengukuran Lingkar Pinggang
procedure informlingping;
  begin
     clrscr;
     writeln('Informasi Pengukuran Lingkar Pinggang.');
     writeln;
     writeln('Pengukuran lingkar pinggang adalah metode sederhana yang dapat digunakan untuk menilai distribusi lemak tubuh melalui ukuran lingkar pinggang.');
     writeln('Pengukuran ini dapat memberikan informasi lanjutan mengenai risiko kesehatan dibandingkan dengan hanya menggunakan Indeks Massa Tubuh (IMT).'); 
     writeln('Hal ini dikarenakan lemak yang terakumulasi di area perut memiliki hubungan yang lebih kuat dengan masalah kesehatan, seperti diabetes tipe 2, penyakit jantung, dan hipertensi.');
     writeln('Jika hasil pengukuran menunjukkan angka yang tinggi, pasien disarankan berkonsultasi dengan ahli kesehatan untuk mendapatkan panduan lebih lanjut.');
     writeln;
     write('Silakan tekan "Enter" untuk mendapatkan informasi mengenai cara mengukur lingkar pinggang. ');
     readln;
     clrscr;
     writeln('Untuk melakukan pengukuran lingkar pinggang, kamu harus menyiapkan pita pengukuran yang fleksibel, seperti pita meteran atau pita jahit.');
     writeln('Jika kamu tidak menemukan pita seperti itu, kamu dapat menggunakan tali rafia atau tali plastik.');
     writeln('Program ini akan menuntun kamu untuk melakukan pengukuran. Mohon ikuti langkah yang diberikan dengan saksama!');
     writeln;
     writeln('- Langkah pertama');
     writeln('  Minta pasien untuk berdiri tegak dengan kaki rapat dan perut dalam posisi normal (tidak ditarik).');
     writeln;
     writeln('- Langkah kedua');
     writeln('  Untuk mendapat pengukuran akurat, kamu harus memastikan pita atau tali menempel langsung pada perut.');
     writeln('  Oleh sebab itu, kamu sebaiknya melepaskan pakaian yang menutupi pinggang. Lepas atau angkat baju sampai di bawah dada.');
     writeln('  Jika celana mencapai pinggang, longgarkan dan turunkan sampai ke pinggul.');
     writeln;
     writeln('- Langkah ketiga');
     writeln('  Temukan lokasi pinggang pasien dengan menelusuri bagian atas pinggul dan dasar tulang rusuk dengan jari.');
     writeln('  Pinggang adalah bagian lunak dan berdaging di antara dua bagian bertulang tersebut.');
     writeln('  Jika kamu kesulitan menemukannya, temukan bagian terkecil dari perut yang biasanya terletak di atas pusar dan di bawah tulang rusuk.');
     writeln;
     writeln('- Langkah keempat');
     writeln('  Minta pasiesn untuk menarik napas secara normal. Tahan pangkal pita atau tali di pusar dan lingkarkan sisa pita atau tali ke belakang pinggang hingga kembali ke depan pusar.');
     writeln('  Pastikan pita atau tali pengukur rata dan tidak terlalu menekan kulit!');
     writeln;
     writeln('- Langkah kelima');
     writeln('  Buang napas secara perlahan. Lihat titik di mana pita atau tali bertemu dengan pangkalnya di depan pusar.');
     writeln('   * Jika kamu menggunakan pita pengukur, lihat angka pada pita pengukur untuk mengecek ukuran pinggang.');
     writeln('   * Jika kamu menggunakan tali, tandai titik di mana tali bertemu dengan pangkalnya di depan pusar dengan menahan bagian itu menggunakan jari');
     writeln('     Ukur panjang tali dari pangkal menuju titik yang kamu tandai sebelumnya menggunakan alat pengukur.');
     writeln('     Kemudian, lihat angka pada alat pengukur untuk mengecek ukuran pinggang.');
     writeln('  Catat angka tersebut dalam satuan sentimeter (cm).');
     writeln;
     writeln('- Langkah keenam');
     writeln('  Lakukan pengukuran dua atau tiga kali untuk memastikan akurasi. Ambil rata-rata dari hasil tersebut jika ada perbedaan.');
     writeln;
     writeln('Untuk kembali ke menu utama, silakan tekan "Enter". ');
     readln;
  end;

//Subprogram Pengukuran IMT dan Lingkar Pinggang 
procedure pengukuran;
  begin 
    clrscr;
    writeln('Perhitungan Indeks Massa Tubuh dan Lingkar Pinggang');
    writeln;
    write('Masukkan jumlah pasien : ');
    readln(n);
    writeln('Silakan masukkan data pasien.');
    writeln;

    // Input data masing-masing pasien
    for i:= 1 to n do 
    begin 
      with daftar[i] do 
      begin 
       writeln('Data pasien ke-', i, ': ');
       write('Masukkan nama                         : ');
       readln(nama);
       write('Masukkan usia (tahun)                 : ');
       readln(usia);
       write('Masukkan jenis kelamin (L/P)          : ');
       readln(jenis);
       jenis:= upcase(jenis);
       write('Masukkan tinggi badan (cm)            : ');
       readln(tinggi);
       write('Masukkan massa tubuh (kg)             : ');
       readln(massa);
       write('Masukkan ukuran lingkar pinggang (cm) : ');
       readln(lingkar);
       writeln;

       //Perhitungan Indeks Massa Tubuh setiap pasien.
       imt:= massa  / sqr(tinggi / 100);

       //Pengecekan kondisi kesehatan berdasarkan ukuran Indeks Massa Tubuh setiap pasien.
       if imt < 18.5 then
        hasilimt := 'Kurus (underweight)'
       else if (imt >= 18.5) and (imt < 25) then
        hasilimt := 'Ideal (normal)'
       else if (imt >= 25) and (imt < 30) then
        hasilimt := 'Kelebihan berat badan (overweight)'
       else if (imt >= 30) and (imt < 35) then
        hasilimt := 'Obesitas tingkat I'
       else if (imt >= 35) and (imt < 40) then
        hasilimt := 'Obesitas tingkat II'
       else
        hasilimt := 'Obesitas tingkat III';
  
        //Pengecekan kondisi kesehatan berdasarkan ukuran lingkar pinggang setiap pasien
       if (jenis = 'L') then //Pengukuran untuk pasien berjenis kelamin laki-laki
       begin 
        if (lingkar < 70)  then
          ukrling:= 'Kurus (underweight)'
        else if ((lingkar >= 70) and (lingkar < 90)) then 
          ukrling:= 'Ideal (normal)'
        else if ((lingkar >= 90) and (lingkar < 102)) then 
          ukrling:= 'Kelebihan berat badan (overweight)'
        else 
          ukrling:= 'Obesitas';
       end

       else if (jenis = 'P') then //Pengecekan untuk pasien berjenis kelamin perempuan
       begin 
        if (lingkar < 60)  then
          ukrling:= 'Kurus (underweight)'
        else if ((lingkar >= 60) and (lingkar < 80)) then
          ukrling:= 'Ideal (normal)'
        else if ((lingkar >= 80) and (lingkar < 88)) then 
          ukrling:= 'Kelebihan berat badan (overweight)'
        else  
          ukrling:= 'Obesitas';
        end 
        else  
          ukrling:= 'Ukuran lingkar pinggang yang dimasukkan tidak valid.';
      end;
    end;
 
    //Tampilan data pasien
    clrscr;
    writeln('Program Pengecekan Kesehatan Tubuh');
    writeln;
    writeln('Hasil Pengecekan Kesehatan');
    writeln;
    for i:= 1 to n do 
    begin
      with daftar[i] do 
        begin 
         garis;
         writeln('Data pasien ke- ', i);
         garis;
         writeln('Nama                     : ', nama);
         writeln('Usia                     : ', usia);
         writeln('Jenis kelamin            : ', jenis);
         writeln('Tinggi badan             : ', tinggi:0:2);
         writeln('Massa tubuh              : ', massa:0:2);
         writeln('Ukuran lingkar pinggang  : ', lingkar:0:2);
         writeln('Indeks Massa Tubuh (IMT) : ',imt:0:2);
         writeln('Kondisi kesehatan berdasarkan IMT                   : ',hasilimt);
         writeln('Kondisi kehatan berdasarkan ukuran lingkar pinggang : ',ukrling);;
        end;
    garis;
    writeln;
    end;
    writeln;
    writeln('Silakan tekan "Enter" untuk kembali ke Menu Utama.');
    readln;
  end;

//Subprogram Penutupan Layanan
procedure tutup;
  begin
    clrscr;
    writeln('Terima kasih telah menggunakan program pengecekan kesehatan ini.');
    writeln('Semoga kamu dapat menggunakan hasil informasi yang diberikan untuk membantu peningkatan kondisi kesehatan kamu menjadi lebih baik.');
    writeln;
    writeln('Program ini berusaha sebaik mungkin untuk menyajikan informasi yang akurat dari sumber tepercaya sesuai dengan kondisi yang diberikan.');
    writeln('Namun, program ini masih memiliki berbagai kelemahan dalam penyajian data yang sangat empiris atau sesuai dengan standar kesehatan terkini dari para ahli.');
    writeln('Oleh karena itu, kamu disarankan untuk mengiringi hasil pengecekan yang kamu dapatkan dari IO dengan informasi kesehatan dari sumber tepercaya lainnya.');
    writeln('Kamu juga disarankan untuk berkonsultasi dengan pakar atau ahli kesehatan jika kamu merasa membutuhkan bantuan mengenai kondisi kesehatan kamu.');
    writeln;
    writeln('Semoga harimu berjalan dengan baik!');
    writeln;
    write('Silakan tekan "Enter" untuk mengakhiri program! ');
    readln;
    halt;
  end;

//Program Utama : Menampilkan Salam Pembuka
begin 
 clrscr;
 writeln('Hai! Selamat datang di program Pengecekan Kesehatan.');
 writeln('Program ini ditujukan untuk membantu petugas kesehatan dalam mengecek kondisi kesehatan dari pasien melalui pengukuran Indeks Massa Tubuh (IMT) dan lingkar pinggang.');
 writeln;
 writeln('Silakan tekan "Enter" untuk melanjutkan ke menu utama.');
 readln;
 menutama;

end.