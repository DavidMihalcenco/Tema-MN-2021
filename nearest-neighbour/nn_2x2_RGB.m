function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    Rosu = img(:,:,1);
    % TODO: extrage canalul verde al imaginii
    Verde = img(:,:,2);
    % TODO: extrace canalul albastru al imaginii
    Albastru = img(:,:,3);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    Rosu = nn_2x2(Rosu,STEP);
    Verde = nn_2x2(Verde,STEP);
    Albastru = nn_2x2(Albastru,STEP);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3,Rosu,Verde,Albastru);
endfunction
