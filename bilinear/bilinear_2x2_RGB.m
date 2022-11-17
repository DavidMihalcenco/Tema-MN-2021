function out = bilinear_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 img cu puncte intermediare
    % echidistante, cu precizarea ca img este o imagine colorata RGB.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % Practic, apeleaza bilinear_2x2_interpolation pe fiecare canal al imaginii
    % img si reconstruieste imaginea colorata la final
    % Parametrii:
    % - img = imaginea 2x2 RGB care doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    Rosu = img(:,:,1);
    % TODO: extrage canalul verde al imaginii
    Verde = img(:,:,2);
    % TODO: extrace canalul albastru al imaginii
    Albastru = img(:,:,3);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    Rosu = bilinear_2x2(Rosu,STEP);
    Verde = bilinear_2x2(Verde,STEP);
    Albastru = bilinear_2x2(Albastru,STEP);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(3,Rosu,Verde,Albastru);

endfunction
