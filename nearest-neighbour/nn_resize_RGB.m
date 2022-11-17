function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
      Rosu = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
      Verde = img(:, :, 2);
    % TODO: extrace canalul albastru al imaginii
      Albastru = img(:, :, 3);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
      Rosu = nn_resize(Rosu,p,q);
      Verde = nn_resize(Verde,p,q);
      Albastru = nn_resize(Albastru,p,q);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3,Rosu,Verde,Albastru);

endfunction
