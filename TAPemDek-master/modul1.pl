ibukota(manila).
ibukota(jakarta).
ibukota(vientiane).
ibukota(nayPyidaw).
ibukota(kuala_lumpur).
ibukota(singapura).
ibukota(phnom_Penh).

negara(filipina, manila).
negara(indonesia, jakarta).
negara(laos, vientiane).
negara(myanmar, nayPyidaw).
negara(malaysia, kuala_lumpur).
negara(singapura, singapura).
negara(kamboja, phnom_Penh).

cari_ibukota:-
    x(X),
    negara(X,Y),
    write(Y).

x(indonesia).
