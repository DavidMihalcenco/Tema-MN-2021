function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
         % TODO: extrage canalul rosu al imaginii
    Rosu = img(:,:,1);
    % TODO: extrage canalul verde al imaginii
    Verde = img(:,:,2);
    % TODO: extrace canalul albastru al imaginii
    Albastru = img(:,:,3);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    Rosu = bilinear_rotate(Rosu, rotation_angle);
    Verde = bilinear_rotate(Verde, rotation_angle);
    Albastru = bilinear_rotate(Albastru, rotation_angle);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(3,Rosu,Verde,Albastru);
    
endfunction