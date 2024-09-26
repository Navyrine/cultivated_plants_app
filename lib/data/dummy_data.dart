import 'package:cultivated_plants_app/model/category.dart';
import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:flutter/material.dart';

const availableCategories = [
  Category(id: "c1", title: "Pangan", color: Colors.purple),
  Category(id: "c2", title: "Holtikutura", color: Colors.purple),
  Category(id: "c3", title: "Hias", color: Colors.red),
  Category(id: "c4", title: "Obat", color: Colors.orange),
  Category(id: "c5", title: "Industri", color: Colors.amber),
];

const dummyCultivatedPlants = [
  CultivatedPlants(
    id: "cp1",
    categories: "c1",
    title: "Padi",
    imageUrl:
        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjl-tmKIV57N0hIH4RI1P1OBJZRqmZS9gU2CQxfYjREqyIq5xsBDIzPC03pQrZJJcc1uCIcxnrWscoLHdN2rjS9BRvgEtEl7_ESI1PYODiLSiUcWrP56ShtWbGmx00kTQmCRC_zAq7x-E3D/s1600/5.jpeg",
    preparations: [
      "Persiapan Media Tanam",
      "Pemilihan Bibit",
      "Persemaian",
      "Penanaman",
      "perawatan Lahan",
      "Pencegahan Hama dan Penyakit",
      "Pemanenan"
    ],
    steps: [
      "Media tanam untuk menanam padi haruslah disiapkan minimal dua minggu sebelum penanaman. Persiapan dilakukan dengan mengolah tanah sebagai media tanam. Tanah harus dipastikan bebas dari gulma dan rumput liar. Jangan sampai pertumbuhan tanaman padi terganggu karena harus berbagi nutrisi dan air dengan rumput-rumput liar. Jika sudah bebas dari tanaman liar, basahi tanah dengan air lalu lakukan pembajakan. Pembajakan dilakukan untuk mempersiapkan tanah dalam keadaan lunak dan gembur serta cocok untuk penanaman. Di zaman modern ini pembajakan tidak lagi dilakukan dengan mencangkul tetapi dengan menggunakan sapi ataupun traktor. Setelah melalui pembajakan, kembali genangi media tanam dengan air. Air diberikan dalam jumlah banyak untuk menutupi seluruh lahan dengan ketinggian hingga 10 cm. Biarkan air pada media tanam terus menggenang. Air yang menggenang selama dua minggu akan menyebabkan media tanam menjadi berlumbur dan racun pun dapat hilang karena ternetralisir.",
      "Bibit pada tanaman padi harus melalui pengujian terlebih dahulu untuk menentukan kualitasnya. Pengujian dilakukan dengan merendam sekitar 100 butir benih padi dalam air. Setelah dua jam periksalah benih tersebut. Cara menanam benih padi yaitu dengan Pemeriksaan benih dilakukan dengan mengidentifikasi perubahan pada benih. Jika terdapat lebih dari 90 butir benih atau lebih dari 90 benih mengeluarkan kecambah, maka artinya benih tersebut berkualitas unggul dan bermutu tinggi. Tentu benih yang berkualitas unggul dan bermutu tinggi inilah yang layak untuk dibudidayakan. Sedangkan jika benih tidak menunjukkan tanda seperti yang disebutkan diatas, artinya benih tersebut tidak disarankan untuk dibudidayakan. Setelah menentukan benih yang akan dijadikan bibit, maka dapat dilakukan persemaian segera.",
      "Persemaian dilakukan setelah menentukan bibit yang unggul. Bibit unggul tersebut kemudian akan disemai di wadah persemaian. Wadah persemaian terlebih dahulu harus disiapkan. Kebutuhan wadah semai diberikan dalam perbandingan sebesar 1 : 20. Misalkan akan menggunakan lahan sawah sebesar 1 hektar maka wadah persemaiannya sekitar 500 m2. Lahan pada wadah persemaian haruslah juga berair dan berlumpur. Berikan pupuk urea dan pupuk TSP pada lahan persemaian dengan dosis masing-masing 10 gr per 1 m2. Jika lahan persemaian sudah siap, sebarkan benih yang telah berkecambah dengan merata.",
      "Proses penanaman dilakukan setelah benih pada proses persemaian telah tumbuh daun sempurna sebanyak tiga hingga empat helai. Jangka waktu dari persemaian ke bibit siap tanam umumnya sekitar 12 hingga 14 hari saja. Jika sudah siap tanam, pindahkan bibit dari lahan semai ke lahan tanam. Pemidahan dilakukan dengan hati-hati dan tidak merusak tanaman. Penanaman dilakukan pada lubang-lubang tanam yang telah disiapkan. Khusus untuk tanaman padi dalam satu lubang dapat ditanam dua bibit sekaligus. Penanaman dilakukan dengan memasukkan bagian akar membentuk huruf L agar akar dapat tumbuh dengan sempurna. Kedalaman bibit ditanam pun ditentukan berkisar pada rentang 1 cm hingga 15 cm. Masa penanaman padi lebih baik dilakukan dua kali dalam setahun berdasarkan masa penanamannya yang ideal.",
      "Perawatan dilakukan dengan tiga hal yaitu penyiangan, pengairan, dan pemupukan. Penyiangan dilakukan dengan menjaga kebersihan lahan dari tanaman pengganggu. Penyiangan harus dilakukan rutin setiap periode waktu tertentu. Bisa dilakukan dua minggu sekali atau tiga minggu sekali. Pengairan diberikan sesuai kebutuhan. Seperti pada tanaman lainnya, pastikan tidak ada kekurangan atau kelebihan air. Selanjutnya untuk pemupukan, dilakukan pertama kali setelah tanaman padi berusia satu minggu. Jenis pupuk yang diberikan adalah pupuk urea dengan dosis 100 kg per hektar dan pupuk TPS dengan dosis 50 kg per hektar. Pemupukan selanjutnya dilakukan setelah 25 hari hingga 30 hari setelah penanaman. Diberikan kembali pupuk urea dengan dosis 50 kg per hektar dan pupuk Phonska dengan dosis 100 kg per hektar.",
      "Hama dan penyakit dapat dicegah dengan memberikan pestisida.",
      "Panen dilakukan dengan tanda-tanda padi yang sudah menguning dan merunduk. Gunakan sabit gerigi untuk memanen dan letakkan hasil panen pada tikar dengan merontokkan beras dari dalam bulir-bulir padi yang ada."
    ],
    duration: 14,
    complexity: Complexity.medium,
    seedPrice: SeedPrice.pricey,
    isHumus: false,
    isAlluvial: true,
    isVolcanic: false,
  ),
  CultivatedPlants(
    id: "cp2",
    categories: "c1",
    title: "Jagung",
    imageUrl:
        "https://i.pinimg.com/originals/15/cd/3e/15cd3e421175dc8b8004c23f599c7647.jpg",
    preparations: [
      "Memilih Bibit yang Unggul",
      "Olah lahan dan Bersihkan Gulma pada Lahan",
      "Menanam Jagung di Lahan",
      "Berikan Pupuk pada Tanaman Jagung",
      "Memelihara Jagung",
      "Panen Jagung",
    ],
    steps: [
      "Hal pertama yang harus dilakukan dalam budidaya jagung adalah memilih bibit berkualitas. Kamu bisa mendapatkan bibit jagung di toko-toko pertanian. Ada beberapa jenis bibit jagung yang biasanya disediakan. Mulai dari bibit kenis hibrida, jagung manis, dan lain sebagainya.",
      "Lahan menjadi syarat mutlak yang harus dipenuhi dalam budidaya tanaman jagung. Sebab hal ini akan menentukan pertumbuhan jagung yang ditanam. Pastikan tanah yang ditanami jagung benar-benar subur. Selain itu, tanah juga harus mengandung unsur hara yang banyak. Jagung tergolong tanaman yang tak rewal. Sebab ia bisa ditanam di bagian tanah andosol, latosol, grumosol, dan jenis tanah lainnya. pH yang sesuai untuk jagung berada di angka 5,6 – 7,5. Jangan lupa untuk pastikan dulu kesuburan tanah yang kamu miliki.",
      "Setelah mendapatkan bibit jagung unggul dan mengolah lahan, cobalah untuk menanam jagung. Kondisi yang paling sesuai untuk menanam jagung adalah kondisi tanah sedang lembab. Pastikan tanah tidak terlalu basah dan tidak terlalu kering. Petani lokal biasanya menggunakan jarak tanam jagung antara 100 cm x 40 cm. Lalu, masukkan dua biji pada satu lubang tanam. Untuk kedalaman lubang tanam biasanya pada angka 3-5 cm.",
      "Pada beberapa bagian pertama pada pemupukan tanaman jagung, kamu bisa menggunakan pupuk dasar. Pupuk dasar yang diberikan biasanya berjenis pupuk organik. Misalnya pupuk kandang, pupuk kompos, dan berbagai jenis pupuk organik lainnya.  Tanaman jagungmu akan menyerap beberapa unsur yang dibutuhkan untuk tumbuh. Unsur ini seperti fosfor, nitrogen, dan kalium. Ketiga unsur tersebut akan dibutuhkan pada fase pertumbuhan dan masa pembuahan.",
      """
      Dalam masa pertumbuhan, ada kemungkinan jagung akan bisa diserang oleh hama.

        Untuk itu, tanaman jagung membutuhkan pemeliharaan yang tepat. Ada beberapa tahapan yang bisa dilakukan seperti penyulaman, penjarangan, pembubuan, pengairan, dan pemupukan susulan. 

      – Penyulaman
        Lakukan penyulaman jika kamu hendak melihat jagung yang terhambat pertumbuhannya. Lalu, gantilah dengan tanaman yang baru. Dalam melakukan penyulaman, jangan sampai kamu terlambat. Maksimal waktu yang butuhkan biasanya hanya satu minggu. 

      – Penjarangan
        Tak hanya penyulaman, kamu juga bisa melakukan penjarangan dan mengontrol tanaman jagung secara berkala. Penjarangan biasanya dilakukan pada jagung yang berumur satu minggu. 

      – Pembubunan
        Pembubunan dilakukan dengan cara menggali parit antar bedengan dan tanah di balik bagian perakaran tanaman.  Hal ini di maksudkan agar tanaman jagung tidak mudah rebah dan membuatnya lebih kokoh untuk menompang batang dan calon buah yang akan tumbuh.  Galian pada parit memungkinkan air untuk masuk. Air itu akan diserap oleh tanaman dengan mudah. 

      – Pemupukan
        Untuk pemupukan, coba taburkan beberapa pupuk kandang. Selain itu, kamu juga bisa memberikan nutrisi pada tanaman. 

      – Pengairan
        Air adalah salah satu faktor penting untuk tanaman jagung, baik di awal hingga nanti panen.  Ada beberapa fase jagung yang membutuhkan banyak air, salah satunya fase bunga.  Fase ini akan tumbuh pada usia tanaman 45-55 hari setelah ditanam. Begitu juga dengan fase pengisian biji yang berada pada usia 50 – 80 hari dihitung setelah tanam.

      – Cegah Hama dan Penyakit

        Ketika tanaman jagung sedang tumbuh, akan selalu ada penghambat.  Ada beberapa hama yang biasanya menyerang tanaman jagung. Hama-hama tersebut seperti ulat tanah, hama lundi, ulat daun, lalat bibit, ulat tentara dll. Penyakit tanaman jagung saat diserang hama biasanya adalah bercak ungu, cendawan dan karat.
      """,
      "Penentuan usia tanaman jagung yang dipanen biasanya tergantung pada konsumen.  Jika kamu menargetkan panen jagung jenis baby corn atau jagung pakan, waku yang dibutuhkan tentu akan lebih cepat.  Namun, kamu harus berhati-hati saat memanennya. Jangan sampai pemanenan dilakukan terlalu lama karena akan membuat banyak biji jagung menjadi rusak.  Sementara untuk mengecek kematang biji jagung, cobalah kupas sample yang kamu punya. Jika memang sudah sesuai dengan yang diharapkan, kamu bisa melakukan pemanenan."
    ],
    duration: 6,
    complexity: Complexity.easy,
    seedPrice: SeedPrice.affordable,
    isHumus: true,
    isAlluvial: false,
    isVolcanic: false,
  ),
  CultivatedPlants(
    id: "cp3",
    categories: "c1",
    title: "Kedelai",
    imageUrl:
        "https://ohhmygoodness.com/cdn/shop/products/BonniePlantsEdamame4_1200x1200.jpg?v=1614704656",
    preparations: [
      "Syarat Tumbuh",
      "Pengolahan Tanah",
      "Jarak Tanam",
      "Persiapan Benih",
      "Penanaman dan Pemupukan Dasar",
      "Pemeliharaan",
      "Pemupukan",
      "Pengelolaan Hama dan Penyakit",
      "Panen",
      "Pasca Panen"
    ],
    steps: [
      "Tanaman kedelai dapat tumbuh pada berbagai jenis  tanah asal drainase (tata air) dan earasi (tata udara) tanah cukup baik, curah hujan 100 – 400 mm/bulan, suhu udara  23 – 30 ºC, kelembaban 60 – 70 %, pH tanah 5,8 – 7, ketinggian kurang dari 600 m dpl.",
      "Tanaman kedelai biasanya ditanam pada tanah kering (tegalan) atau tanah persawahan. Tanah bekas  penanaman padi tidak perlu diolah (tanpa olah tanah= TOT), namun jerami padi perlu dipotong pendek. Untuk memberantas gulma perlu disemprot dengan herbisida kontak atau sistemik.",
      "Jarak tanam : 40 cm x 25 cm atau 40 cm x 20 cm atau 40 cm x 15 cm atau 40 cm x 10 cm tergantung dari tingkat    kesuburan tanah dan umur tanaman. Begitu pula pada umur varietas, varietas yang umur pendek  (genjah), sebaiknya menggunakan jarak tanam yang lebih rapat (40 cm x 10 cm), varietas yang umur sedang sebaiknya menggunakan jarak tanam yang sedang (40 cm x 15 cm), dan varietas yang umur dalam (umur panjang), jarak tanam yang digunakan lebih renggang (40 cm x 25 cm).",
      """
      Varietas berbiji kecil : Gepak Kuning , Gepak Hijau. Varietas berbiji besar : Agro mulyo , Grobogan, Panderman, Anjasmoro, Burangrang, Arjasari, Mahameru. Berdasarkan potensi hasil dan kemampuan adaptasi terhadap perubahan lingkungan dianjurkan menanam VUB : Kaba, Argomolyo, Anjasmoro, Burangrang, Grobogan, dan Sinabung. Kebutuhan benih 40 kg/ha dengan daya tumbuh 90%.
      
      Varietas unggul kedelai mempunyai sifat beragam terkait dengan ukuran biji, umur panen, potensi hasil, warna biji, daya tahan terhadap cekaman biotik atau abiotik serta daya adaptasi.
      """,
      """
      Sebelum dilakukan kegiatan penanaman, terlebih dulu diberi pupuk dasar. Pupuk yang digunakan berupa TSP sebanyak 75 kg – 200 kg/ha, KCl 50 kg – 100 kg/ha, dan Urea  50 kg/ha. Untuk menghindari hama lalat bibit, sebaiknya pada saat penanaman benih diberikan pula Furadan, Curater, atau Indofuran      kedalam lubang tanam.

      Cara tanam yang  terbaik untuk memperoleh produktivitas tinggi yaitu dengan membuat lubang tanam memakai tugal dengan kedalaman antara 1,5 – 2cm. Penanaman dilakukan dengan memasukkan ke dalam lubang penanaman sebanyak 2 benih/lubang kemudian tabur dengan tanah.
      """,
      """
      Tanaman kedelai sangat memerlukan air saat perkecambahan (0–5 hari setelah tanam), stadium awal vegetatif (15–20 hari), masa pembungaan (25–35hari) dan pembentukan biji (55–70 hari). Pengairan sebaiknya dilakukan pada pagi atau sore hari.

      Pada saat tanaman berumur 20 – 30 hari setelah tanam, dilakukan kegiatan penyiangan. Penyiangan dilakukan dengan cara pemantauan baik secara mekanik– konvensional atau manual atau secara kimia denganmenggunakan herbisida Penyiangan pertama dilakukan bersamaan dengan kegiatan pemupukan susulan. Penyiangan kedua dilakukan setelah tanaman kedelai selesai berbunga. Penyiangan dilakukan dengan mencabut gulma yang tumbuh menggunakan tangan atau kored. Selain itu, dilakukan  pula penggemburan  tanah.  Penggemburan dilakukan secara hati-hati agar tidak merusak perakaran tanaman.
      """,
      """
      Pupuk diberikan pada saat tanaman berumur 20-30 hari setelah tanam yaitu menjelang kedelai berbunga. Pemupukan dilakukan dengan cara menaburkan pupuk di sekeliling tanaman dengan jarak kurang lebih 10 cm. Dosis pupuk secara tepat adalah sebagai berikut:

      -Sawah kondisi tanah subur: pupuk Urea= 50 kg/ha.
      -Sawah kondisi tanah subur sedang: pupuk Urea= 50 kg/ha, TSP= 75 kg/ha dan KCl= 100 kg/ha.
      -Sawah kondisi tanah subur rendah: pupuk Urea= 100 kg/ha, TSP= 75 kg/ha dan KCl= 100 kg/ha.
      -Lahan kering kondisi tanah kurang subur: pupuk kandang= 2000 – 5000 kg/ha; Urea= 50 – 100 kg/ha, TSP= 50 – 75 kg/ha dan KCl= 50-75 kg/ha
      """,
      """
      Beberapa jenis hama yang menyerang tanaman kedelai :

      -Ulat Grayak : Ulat memakan seluruh bagian daun kecuali tulang daun, sehingga daun-daun yang terserang dari jauh terlihat berwarna putih.
      -Penggerek polong: Gejala serangan yang biasa ditandai dengan masuk ke dalam polong. Selain makan polong, ulat muda juga menyerang daun-daun dan bunga. 
      -Penggerek polong kedelai : Penggerek polong dapat ditemukan dipermukaan pertanaman kedelai sejak pembungaan sampai menjelang panen.

      Secara umum pengendalian hama pada tanaman kedelai dapat dilakukan dengan menggunakan insektisida dilakukan bila mencapai intensitas kerusakan lebih dari 2% dan jika ditemukan 1 pasang serangga dewasa pada 20 rumpun tanaman, atau jika ditemukan 2 ulat per tanaman (tingkat serangan mencapai lebih dari 2,5%).

      Beberapa jenis penyakit yang menyerang tanaman kedelai :

      -Penyakit Busuk Akar : Penyakit busuk akar disebabkan oleh jamur yang menyerang biji sebelum dan sesudah munculnya dipermukan tanah. Pembusukan pada akar dan batang menyebabkan tanaman menjadi layu pada saat perkecambahan dan tanaman dewasa.
      -Penyakit Busuk Batang : Gejala penyakit busuk batang tanaman yang sakit menunjukkan gejala penyakit berupa kerusakan pada tanaman dewasa pada bagian daun bahkan polong kedelai.
      -Penyakit Karat Daun : Gejala timbul pada daun pertama berupa bercak-bercak yang berkembang ke daun-daun di atasnya dengan bertambahnya umur tanaman. Bercak terutama terdapat pada permukaan bawah daun. Warna berupa coklat kemerahan seperti warna karat.
      """,
      "Panen dilakukan pada saat tanaman sudah masak. Umur panen kedelai ditentukan oleh jenis varietas, musim tanam, kelengasan tanah serta perlakuan agronomis, umumnya 70 – 90 hari. Kedelai masak ditandai dengan 95% polong berwarna coklat atau daun sudah berwarna kuning. Panen dimulai sekitar jam 09.00 pagi, pada saat ini air embun sudah hilang. Pangkal batang tanaman dipotong menggunakan sabit. Hindari pemanenan dengan cara mencabut tanaman, agar tanah/kotoran tidak terbawa. Hasil panen ditempatkan ditempat kering dan diberi alas terpal/plastik.",
      """
      Penanganan pasca panen yang terdiri dari penjemuran brangkasan tanaman, pembijian, pengeringan, pembersihan, dan penyimpanan biji. Kedelai sebagai bahan konsumsi dipetik pada umur 75 – 100 hari, sedangkan untuk benih umur 100 – 110 hari, agar kemasakan biji benar-benar sempurna dan merata. Penjemuran yang terbaik adalah penjemuran brangkasan kedelai diberi alas terpal. Pengumpulan dan Pengeringan Setelah pemungutan selesai, seluruh hasil panen hendaknya segera dijemur. Kedelai dikumpulkan kemudian dijemur di atas tikar, anyaman bambu, atau di lantai semen selama 3 hari. 

      Sesudah kering sempurna dan merata, polong kedelai akan mudah pecah sehingga bijinya mudah dikeluarkan. Agar kedelai kering sempurna, pada saat penjemuran hendaknya dilakukan pembalikan berulang kali. Pembalikan juga menguntungkan karena dengan pembalikan banyak polong pecah dan banyak biji lepas dari polongnya. Sedangkan biji-biji masih terbungkus polong dengan mudah bisa dikeluarkan dari polong, asalkan polong sudah cukup kering. 

      Penyortiran dan penggolongan terdapat beberapa cara untuk memisahkan biji dari kulit polongan. Diantaranya dengan cara memukul-mukul tumpukan brangkasan kedelai secara langsung dengan kayu atau brangkasan kedelai sebelum dipukul-pukul dimasukkan ke dalam karung, atau dirontokkan dengan alat pemotong padi. Setelah biji terpisah, brangkasan disingkirkan. Biji yang terpisah kemudian ditampi agar terpisah dari kotoran- kotoran lainnya. Biji yang luka dan keriput dipisahkan. Biji yang bersih ini selanjutnya dijemur kembali sampai kadar airnya 9-11 %. Biji yang sudah kering lalu dimasukkan ke dalam karung dan dipasarkan atau disimpan.
      """
    ],
    duration: 7,
    complexity: Complexity.hard,
    seedPrice: SeedPrice.pricey,
    isHumus: true,
    isAlluvial: false,
    isVolcanic: false,
  ),
  CultivatedPlants(
    id: "cp4",
    categories: "c1",
    title: "Cabai",
    imageUrl:
       "https://cdn.vanillakismis.my/2020/06/chilli-peppers-growing-in-a-pot-25_34_681623.jpg",
    preparations: [
      "Pilih Benih Cabe Berkualitas",
      "Keluarkan Biji Cabe dari Buahnya",
      "Jemur Biji Cabe",
      "Seleksi Biji Cabe",
      "Mulai Penyemaian",
      "Pindahkan ke Media Tanam",
      "Mulai Perawatan Tanaman Cabe"
    ],
    steps: [
      """
      Hal pertama yang harus kita perhatikan dalam cara menanam cabe agar cepat berbuah yaitu dengan memilih benih cabe yang berkualitas baik. Ada banyak cara dalam mendapatkan benih cabe yang hampir sama dengan Cara Budidaya Jamur, kita bisa mendapatkan benih cabe dengan membelinya di toko atau langsung pada petani cabe, dan kita juga bisa mendapatkan benih dengan cara langsung mengambil dari buahnya.

      Jika ingin mendapatkan benih cabe dari cara mengambil dari buahnya, pastikan cabe berasal dari induk yang berkwalitas berdaun lebat dan berbuah lebat, apabila memasuki fase berbuah, petiklah bagian buah cabe yang benar benar telah tua serta kulit bagian luarnya nampak merah mengkilat. Jangan ambil dari buah cabe yang sudah busuk.
      """,
      "Buatlah sayatan pada buah cabe tersebut menjadi dua bagian, lakukanlah dengan hati-hati karena selain bisa melukai tangan anda, sayatan yang salah bisa juga melukai biji cabe yang hendak digunakan sebagai bibit . Jika sudah, keluarkanlah biji cabe yang terdapat di bagain dalamnya. Pilihlah biji-biji yang berada ditengah karena itulah biji terbaik dibanding yang berada di kedua ujungnya.",
      "Selanjutnya yang harus kita lakukan adalah menjemur biji cabe tersebut di bawah sinar matahari, pastikan untuk menjadikan biji cabe tersebut berada dalam kondisi kering dengan cara diangin-anginkan. Kita dapat menggunakan nampan atau tampah untuk proses tersebut.",
      "Sebelum melakukan proses semai pada bibit cabe, kita seleksi untuk memilih bibit cabe berkwalitas dengan daya tumbuh terbaik dan memisahkannnya dengan biji cabe yang tidak cocok digunakan sebagai  bibit. Caranya, masukkan biji-biji cabe pada larutan nutrisi atau air mineral biasa, diamkan selama satu malam dan lihat keesokan harinya.Biji-biji cabe yang tenggelam dapat kita gunakan sebagai bahan bibit tanaman, sedangkan biji yang mengapung sudah dapat dipastikan tidak dapat kita pakai sebagai bibit karena itu biji kopong (kosong)",
      """
      Jika sudah mendapatkan benih cabe yang bagus maka kita bisa memulai untuk melakukan penyemaian terlebih dahulu untuk mendapatkan bibit cabe yang berkualitas pula. Adapun cara cepat agar bibit cabecepat  bertunas yaitu dengan menggunakan media semai berupa tanah yang telah dicampur dengan sekam dan pupuk kandang. Adapun perbandingannya yaitu 2: 1: 1.

      Taburkan benih di atas media tanam dan tutup tipis dengan tanah campuran hingga benar benar tertutup. Letakkan di ruangan yang memiliki penyinaran kurang dan tutuplah permukaan media semai dengan kain hitam yang memiliki pori- pori besar. Kurang lebih sekitar 3 hingga 5 hari tunas pada benih sudah muncul dan tunggulah hingga tunas mencapai ketinggian sekitar 5 hingga 10cm untuk bisa dipindahkan ke media tanam.
      """,
      """
      Agar cabe yang kita tanam cepat berbuah maka kita bisa memilih dua media tanam yaitu, pertama media tanam pot dan yang kedua dengan cara hidroponik. Namun akan lebih baik jika anda menanam cabe di dalam pot karena akan lebih panjang umur.

      Berikut sedikit penjelasan mengenai penyediaan media tanam yang baik :

      -Agar cabe cepat berbuah, pertama campurkan pupuk, sekam, dan tanah humus dengan perbandingan 2: 1: 3. Sangat penting untuk memilih jenis pupuk berkualitas terbaik.
      Dan akan lebih baik jika kita menggunakan pupuk organik seperti pupuk kandang ataupun pupuk humus. Selain lebih alami, ini juga lebih aman bagi lingkungan dan tidak akan mengubah tekstur tanah.
      Semprotkan sedikit air dengan spray terlebih dahulu hingga tanah memiliki sedikit kelembapan.
      Setelah itu masukkan tanah ke dalam pot dengan diameter 25 hingga 30cm.
      Buatlah lubang tanam pada setiap pot dan  hanya bisa menanam satu bibit cabe saja pada setiap pot.
      Pisahkan bibit cabe yang sudah mencapai ketinggian 5 hingga 10cm pada media semai secara perlahaan dan jangan sampai akarnya rusak.
      Buatlah lubang tanam dengan diameter 5 cm dan kedalaman 5 cm pada media tanam, lalu masukkan bibit cabe.
      Setelah itu tutup lubang tanam dan jangan lupa untuk sedikit memadatkannya agar bibit dapat berdiri dengan kokoh.
      """,
      """
      Hal terpenting dalam cara menanam cabe agar cepat berbuah yaitu dengan melakukan perawatan yang tepat. Ini sangatlah penting dan harus anda ketahui karena hasil panen tergantung pada proses perawatan yang anda lakukan. Semakin baik proses merawatnya maka semakin baik dan cepat pula anda bisa memanen cabe.

      Berikut merupakan penjelasan singkat mengenai perawatan cabe yang harus anda lakukan :

      Pertama dengan melakukan penyiraman secara rutin, untuk penyiraman agar cabe anda cepat berbuah anda bisa menyiramnya dengan air cucian beras di pagi hari dan air biasa di sore hari.
      Anda juga bisa menambahkan beberapa vitamin untuk menutrisi cabe agar cepat berbuah dan panen.
      Selain itu anda juga perlu melakukan pemupukan lanjutan, untuk pemupukan lanjutan anda bisa melakukannnya setiap 2 minggu sekali. Sembari memupuk anda juga perlu menambahkan kadar tanah pada media tanam karena tanah akan selalu terkikis seiring dengan proses penyiraman yang anda lakukan.
      Jagalah kebersihan tanaman cabe anda agar tidak mudah terserang hama ataupun penyakit tanaman. Untuk pembersihannya terbilang sangat mudah, anda hanya perlu membuang daun cabe yang mongering saja dan membersihkan media tanam dari tumbuhan liar seperti rumput.
      Perhatikan juga kesehatan tanaman cabe anda, jika tanaman cabe anda terkena virus penyakit ataupun hama maka anda harus mengobatinya. Untuk memberantas hama yang ada, anda bisa menyemprotkan pestisida secukupnya saja dan jangan terlalu berlebihan.
      Lakukan ini hingga masa panen tiba, dengan melakukan perawatan yang tepat maka kurangdari waktu sebulan cabe anda akan berbuah lebat dan anda pun akan cepat memanennya.
      Untuk memanen cabe kita bisa melakukannya dengan memotong batang cabe menggunakan tangan ataupun alat gunting. Hindari memanen dengan mencabut buah cabe karena dapat merusak tekstur tanaman sehingga akan sulit dipanen lagi.
      """,
    ],
    duration: 14,
    complexity: Complexity.hard,
    seedPrice: SeedPrice.pricey,
    isHumus: true,
    isAlluvial: false,
    isVolcanic: false,
  ),
  CultivatedPlants(
    id: "cp5",
    categories: "c1",
    title: "Tomat",
    imageUrl:
        "https://images.squarespace-cdn.com/content/v1/5a6f862acd39c3e8a453e4c6/1519115639129-HC1ARD4G9PA9ECUVCE1D/tomatoes-1280859_1280.jpg?format=1500w",
    preparations: [
      "Siram Teratur",
      "Beri Pupuk",
      "Pastikan Mendapat Cahaya Optimal",
      "Berikan Penutup Tanah atau Mulsa",
      "Potong Bagian Bawah Daun",
      "Pastikan untuk Mengubur Batangnya",
      "Tanam di Tempat yang Tersedia Banyak Angin"
    ],
    steps: [
      "Cara pertama mungkin klise dan diketahui banyak orang, yaitu lakukan penyiraman secara teratur Memang tampaknya mudah, tetapi tak sedikit yang menghiraukan dan ogah-ogahan saat melakukan perawatan tanaman tomat, khususnya untuk menyiramnya. Idelanya, tomat disiram sebanyak dua kali dalam sehari, kecuali ketika musim hujan, kamu dapat menyesuaikan frekuensinya.",
      "Ya, tomat adalah tanaman yang mudah tumbuh tanpa perawatan khusus.Namun agar ia berbuah lebat, coba beri pupuk terbaik. Misalnya memberikan pupuk NPK, TSP, atau SP36. Ketika tampak mulai berbuah, intensitas pemberian pupuk sebaiknya lebih ditingkatkan agar hasilnya maksimal."
      "Cara menanam tomat agar berbuah lebat berikutnya adalah memastikan ia mendapat cahaya matahari optimal. Hal ini demi melancarkan proses fotosintesis dan pembentukan buah. Maka dari itu, bila kamu menanam buah tomat, pastikan tempatnya disinari langsung oleh cahaya matahari, ya!"
      "Langkah berikutnya cara merawat tanaman tomat agar berbuah lebat adalah memberikan mulsa atau penutup tanah. Cara ini digunakan agar area tanah sekitar tomat suhunya terjaga, dan mampu mencegah penyakit lewat media tanah. Bila menanam tomat melalui pot, kamu dapat menggunakan jerami atau sekam mentah untuk difungsikan sebagai mulsa alami."
      "Ada dua daun yang baiknya dipotong ketika tanaman tomat sudah mulai tumbuh. Pertama, bagian bawah daun, ia perlu kamu pangkas karena tidak mendapat sinar matahari secara optimal dan agar mencegah penyakit jamur menyebar. Kedua, daun yang terletak pada sendi di antara dua cabang tanaman. Daun tersebut perlu dipotong karena tidak akan berbuah dan justru menghabiskan energi tanaman. Selain kedua daun di atas, buang juga daun-daun yang tampak sudah layu dan rusak."
    ],
    duration: 10,
    complexity: Complexity.medium,
    seedPrice: SeedPrice.affordable,
    isHumus: true,
    isAlluvial: false,
    isVolcanic: false,
  ),
];
