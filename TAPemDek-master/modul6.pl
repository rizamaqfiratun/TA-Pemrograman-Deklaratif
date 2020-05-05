
 mulai:-
      init,
      data_pengamatan,
      aturan(_,Alasan),
      jawaban(Alasan,Jawab,_),
      write(Jawab),nl,
      retractall(observation(_)).
 mulai:-
      write('Database system belum memadai, untuk info lebih lanjut hubungi konsultan secara langsung.'),nl,nl,
      retractall(observation(_)).
 init:-
      write('System Consultant Finance'),nl,nl,
      write('Finance assistant'),nl,
      judul(Judul),write(Judul),nl,nl,
      tulis_pesan,nl.
 tulis_pesan:-
      pesan(Pesan),
   write(Pesan),nl,fail.
 tulis_pesan:-
      nl.
 data_pengamatan:-
   pertanyaan(Tanya,Obs),
   write(Tanya),nl,
   read(Yatidak),
   Yatidak=y,
   assert(observation(Obs)),
   fail.
 data_pengamatan.

 %list
judul('Financial Planner Sistem Analysist').
pesan('jawab pertanyaan dengan y atau t').
pertanyaan('apakah anda pernah menkonsultasikan masalah financial?',1).
pertanyaan('apakah anda memiliki pemasukan yang tetap?',2).
pertanyaan('apakah anda memiliki lebih dari satu sumber pemasukan setiap bulannya?',3).
pertanyaan('apakah pemasukan anda dapat memenuhi kebutuhan anda setiap bulannya?',4).
pertanyaan('apakah anda memiliki investasi/tabungan ?',5).
pertanyaan('apakah anda dapat berinvestasi/menabung di tiap bulannya?',6).
pertanyaan('apakah anda memiliki tabungan darurat?',7).
pertanyaan('apakah anda financial planning jangka panjang di masa mendatang?',8).
pertanyaan('apakah anda memiliki hutang/piutang?',9).

%tree
rule(1,financially_dependence):-
    not(observation(1)),
    not(observation(2)),
    not(observation(3)),
    not(observation(4)),
    not(observation(5)),
    not(observation(6)),
    not(observation(7)),
    not(observation(8)),
    observation(9).

rule(2,financially_solvency):-
    not(observation(1)),
    observation(2),
    not(observation(3)),
    observation(4),
    not(observation(5)),
    not(observation(6)),
    not(observation(7)),
    not(observation(8)),
    not(observation(9)).

rule(3,financially_stable):-
    not(observation(1)),
    observation(2),
    not(observation(3)),
    observation(4),
    observation(5),
    not(observation(6)),
    not(observation(7)),
    not(observation(8)),
    not(observation(9)).

rule(4,sinancially_secured):-
    not(observation(1)),
    observation(2),
    not(observation(3)),
    observation(4),
    observation(5),
    observation(6),
    not(observation(7)),
    not(observation(8)),
    not(observation(9)).

rule(5,financially_independent):-
    not(observation(1)),
    observation(2),
    not(observation(3)),
    observation(4),
    observation(5),
    observation(6),
    observation(7),
    not(observation(8)),
    not(observation(9)).


rule(6,financial_freedom):-
    observation(1),
    observation(2),
    observation(3),
    observation(4),
    observation(5),
    observation(6),
    observation(7),
    observation(8),
    not(observation(9)).


jawaban(financially_dependence, ' Sekarang level financial anda berada pada levek Financial Dependence').
jawaban(financially_solvency, ' Sekarang level financial anda berada pada levek Financial Solvency').
jawaban(financially_stable, ' Sekarang level financial anda berada pada levek Financial Stable').
jawaban(financially_secured, ' Sekarang level financial anda berada pada levek Financial Secured').
jawaban(financially_independent, ' Sekarang level financial anda berada pada levek Financial Independent').
jawaban(financial_freedom,' Sekarang level financial anda berada pada levek Financial Freedom').

tindakan(financially_dependence,'Saran: anda sebaiknya mencari sebuah pekerjaan tetap ataupun melakukan sebuah pekerjaan yang dapat menghasilkan pendapatan tetap.').
tindakan(financially_solvency,'Saran: sekarang anda sudah memiliki sebuah pemasukan tetap, akan tetapi penghasilan anda setiap bulannya kurang mencukupi kebutuhan anda. Sebaiknya anda mencari sumber penghasila kedua agar kebutuhan bulanan tercukupi').
tindakan(financially_stable,'Saran : Anda sudah berada pada level financial yang aman, akan tetapi belajarlah memanajeman uang anda sebaik mungkin agar tidak terjadi sesuatu yang tidak di inginkan. juga jangan lupakan tabungan emergency untuk kebutuhan mendesak').
tindakan(financially_secured,'Saran : Ditahap ini uang yang anda miliki lebih dari cukup untuk mencukupi kebutuhan sehari hari anda beserta keluarga, saya menyarankan agar anda memulai untuk berinvestasi dengan uang tabungan anda untuk memaksimalkan financial anda').
tindakan(financially_independent,'Saran : pada level ini hasil passive income anda sudah lebih dari cukup untuk memenuhi kebutuhan perbulan anda, tetaplah hidup sederhana tampa adanya pemborosan yang tidak di perlukan dan kembangkan lagi sumber penghasilan anda').
tindakan(financially_freedom,'Saran : anda sudah berada pada level terakhir pada level financial, anda adalah salah satu dari sekian miliarder di dunia. tetaplah bersahaja dan gunakan keuanngan anda pada hal yang berguna bagi manusia luas. membantu sesama adalah sebuah kebajikan yang dapat membuat dunia menjadi tempat yang lebih baik').



aturan(1,2,2,2,2,2,2,2,2,1).
aturan(2,2,1,2,1,2,2,2,2,2).
aturan(3,2,1,2,1,1,2,2,2,2).
aturan(4,2,1,2,1,1,1,2,2,2).
aturan(5,2,1,2,1,1,1,1,2,2).
aturan(6,1,1,1,1,1,1,1,1,2).

 jawaban(1, ' Sekarang level financial anda berada pada levek Financial Dependence\n
               Saran: anda sebaiknya mencari sebuah pekerjaan tetap ataupun melakukan sebuah pekerjaan yang dapat menghasilkan pendapatan tetap.').
 jawaban(2, ' Sekarang level financial anda berada pada levek Financial Solvency\n
               Saran: sekarang anda sudah memiliki sebuah pemasukan tetap, akan tetapi penghasilan anda setiap bulannya kurang mencukupi kebutuhan anda. Sebaiknya anda mencari sumber penghasila kedua agar kebutuhan bulanan tercukupi.').
 jawaban(3, ' Sekarang level financial anda berada pada levek Financial Stable\n
               Saran : Anda sudah berada pada level financial yang aman, akan tetapi belajarlah memanajeman uang anda sebaik mungkin agar tidak terjadi sesuatu yang tidak di inginkan. juga jangan lupakan tabungan emergency untuk kebutuhan mendesak.').
 jawaban(4, ' Sekarang level financial anda berada pada levek Financial Secured\n
               Saran : Ditahap ini uang yang anda miliki lebih dari cukup untuk mencukupi kebutuhan sehari hari anda beserta keluarga, saya menyarankan agar anda memulai untuk berinvestasi dengan uang tabungan anda untuk memaksimalkan financial anda.').
 jawaban(5, ' Sekarang level financial anda berada pada levek Financial Independent\n
               Saran : pada level ini hasil passive income anda sudah lebih dari cukup untuk memenuhi kebutuhan perbulan anda, tetaplah hidup sederhana tampa adanya pemborosan yang tidak di perlukan dan kembangkan lagi sumber penghasilan anda.').
 jawaban(6, ' Sekarang level financial anda berada pada levek Financial Freedom\n
               Saran : anda sudah berada pada level terakhir pada level financial, anda adalah salah satu dari sekian miliarder di dunia. tetaplah bersahaja dan gunakan keuanngan anda pada hal yang berguna bagi manusia luas. membantu sesama adalah sebuah kebajikan yang dapat membuat dunia menjadi tempat yang lebih baik.').


program:-nl,
    pertama(X),
    kedua(Y),
    ketiga(Z),
    keempat(K),
    kelima(L),
    keenam(M),
    ketujuh(N),
    kedelapan(O),
    kesembilan(P),

    aturan(R,X,Y,Z,K,L,M,N,O,P),
    jawaban(R,A),
    write(A).

programm:-nl,
    pertama(X),
    kedua(Y),
    ketiga(Z),
    keempat(K),
    kelima(L),
    keenam(M),
    ketujuh(N),
    kedelapan(O),
    kesembilan(P),

    aturan(R,X,Y,Z,K,L,M,N,O,P),
    jawaban(R,A),
    write(R).
pertama(2).
kedua(1).
ketiga(1).
keempat(2).
kelima(2).
keenam(2).
ketujuh(2).
kedelapan(2).
kesembilan(2).
