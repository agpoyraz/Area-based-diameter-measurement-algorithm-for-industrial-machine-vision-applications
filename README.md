# Area-based-diameter-measurement-algorithm-for-ndustrial-machine-vision-applications
Area based diameter measurement algorithm for ındustrial machine vision applications
Detailed explanation for this code is given this paper doi: 10.28948/ngmuh.1069442 
Area based diameter measurement algorithm for ındustrial machine vision applications

For citation

Poyraz, Ahmet Gökhan, et al. "Endüstriyel makine görmesi uygulamalarında kullanılabilecek alan tabanlı çap ölçüm algoritması." Niğde Ömer Halisdemir Üniversitesi Mühendislik Bilimleri Dergisi: 1-1.

@article{poyraz2022endustriyel,
  title={End{\"u}striyel makine g{\"o}rmesi uygulamalar{\i}nda kullan{\i}labilecek alan tabanl{\i} {\c{c}}ap {\"o}l{\c{c}}{\"u}m algoritmas{\i}},
  author={Poyraz, Ahmet G{\"o}khan and KINAGU, Hasan Melih and Semih, ALAN and Mehmet, ATAK},
  journal={Ni{\u{g}}de {\"O}mer Halisdemir {\"U}niversitesi M{\"u}hendislik Bilimleri Dergisi},
  pages={1--1},
  year={2022}
}

In order to clear image you can use 'eliminate_small_objects' function

`im = imread('deneme.png')'

'[im_desired] = eliminate_small_objects(im,250)`
