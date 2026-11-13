// ==========================================
// 1. MOVIMENTAÇÃO E COLISÃO HORIZONTAL
// ==========================================

// Move pixel por pixel se houver colisão no eixo X
var _sub_pixel_h = sign(velh);
repeat(abs(int64(velh)))
{
    if (place_meeting(x + _sub_pixel_h, y, obj_chao))
    {
        velh = 0;
        break;
    }
    x += _sub_pixel_h;
}

// ==========================================
// 2. MOVIMENTAÇÃO E COLISÃO VERTICAL
// ==========================================

// Move pixel por pixel se houver colisão no eixo Y
var _sub_pixel_v = sign(velv);
repeat(abs(int64(velv)))
{
    if (place_meeting(x, y + _sub_pixel_v, obj_chao))
    {
        velv = 0;
        break;
    }
    y += _sub_pixel_v;
}