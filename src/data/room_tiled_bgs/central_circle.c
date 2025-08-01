#include "global.h"
#include "data.h"

static const u16 sCentralCirclePalette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(19, 24, 28) | 0x8000, RGB(25, 22, 31) | 0x8000, RGB(30, 20, 29) | 0x8000, RGB(25, 23, 31) | 0x0000, RGB(30, 23, 20) | 0x0000, RGB(26, 23, 31) | 0x8000, RGB(26, 24, 31) | 0x8000,
    RGB(30, 24, 28) | 0x0000, RGB(27, 25, 31) | 0x8000, RGB(28, 27, 30) | 0x0000, RGB(29, 28, 24) | 0x8000, RGB(29, 28, 31) | 0x0000, RGB(29, 29, 31) | 0x0000, RGB(31, 30, 24) | 0x8000, RGB(31, 30, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(17, 25, 30) | 0x0000, RGB(22, 23, 30) | 0x8000, RGB(19, 25, 30) | 0x8000, RGB(25, 22, 31) | 0x8000, RGB(21, 26, 30) | 0x8000, RGB(24, 24, 31) | 0x0000, RGB(22, 27, 30) | 0x0000,
    RGB(26, 26, 29) | 0x0000, RGB(24, 27, 31) | 0x8000, RGB(25, 27, 31) | 0x8000, RGB(29, 28, 25) | 0x0000, RGB(27, 28, 31) | 0x8000, RGB(28, 29, 31) | 0x8000, RGB(31, 30, 24) | 0x0000, RGB(30, 30, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 25, 30) | 0x0000, RGB(24, 23, 31) | 0x0000, RGB(20, 26, 30) | 0x0000, RGB(31, 24, 17) | 0x0000, RGB(25, 24, 31) | 0x8000, RGB(27, 25, 25) | 0x8000, RGB(23, 27, 30) | 0x0000,
    RGB(31, 25, 19) | 0x8000, RGB(25, 27, 30) | 0x0000, RGB(31, 27, 20) | 0x0000, RGB(26, 28, 30) | 0x8000, RGB(28, 28, 27) | 0x0000, RGB(31, 28, 21) | 0x8000, RGB(30, 29, 26) | 0x8000, RGB(31, 30, 23) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB(31, 23, 13) | 0x0000, RGB(23, 24, 30) | 0x0000, RGB(31, 23, 14) | 0x8000, RGB(31, 24, 15) | 0x0000, RGB(31, 25, 16) | 0x0000, RGB(27, 26, 29) | 0x0000, RGB(31, 26, 17) | 0x0000,
    RGB(31, 27, 19) | 0x0000, RGB(31, 28, 20) | 0x0000, RGB(29, 28, 28) | 0x8000, RGB(31, 28, 21) | 0x8000, RGB(31, 29, 22) | 0x8000, RGB(31, 30, 22) | 0x0000, RGB(31, 30, 23) | 0x8000, RGB(31, 30, 28) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 25, 30) | 0x0000, RGB(30, 19, 28) | 0x8000, RGB(20, 25, 30) | 0x8000, RGB(25, 23, 31) | 0x0000, RGB(22, 26, 30) | 0x0000, RGB(25, 24, 31) | 0x0000, RGB(30, 23, 28) | 0x0000,
    RGB(23, 26, 30) | 0x8000, RGB(26, 25, 31) | 0x8000, RGB(24, 27, 31) | 0x8000, RGB(27, 26, 30) | 0x8000, RGB(26, 28, 31) | 0x0000, RGB(30, 27, 28) | 0x8000, RGB(27, 28, 31) | 0x8000, RGB(29, 30, 30) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB(31, 20, 14) | 0x0000, RGB(31, 21, 15) | 0x8000, RGB(31, 22, 16) | 0x0000, RGB(31, 22, 16) | 0x8000, RGB(31, 23, 17) | 0x8000, RGB(31, 24, 17) | 0x0000, RGB(31, 25, 19) | 0x0000,
    RGB(31, 26, 19) | 0x0000, RGB(31, 27, 20) | 0x0000, RGB(31, 28, 21) | 0x0000, RGB(31, 28, 21) | 0x8000, RGB(31, 29, 22) | 0x8000, RGB(31, 30, 23) | 0x0000, RGB(31, 31, 24) | 0x0000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(31, 19, 13) | 0x0000, RGB(31, 20, 14) | 0x0000, RGB(31, 21, 15) | 0x8000, RGB(18, 25, 30) | 0x0000, RGB(31, 22, 16) | 0x0000, RGB(28, 24, 25) | 0x0000, RGB(31, 24, 16) | 0x0000,
    RGB(24, 26, 29) | 0x0000, RGB(31, 25, 18) | 0x8000, RGB(27, 26, 27) | 0x0000, RGB(30, 27, 24) | 0x0000, RGB(27, 28, 29) | 0x8000, RGB(31, 29, 18) | 0x0000, RGB(31, 30, 20) | 0x0000, RGB(31, 31, 31) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB(31, 17,  9) | 0x0000, RGB(31, 17,  9) | 0x8000, RGB(31, 18, 10) | 0x0000, RGB(31, 18, 10) | 0x8000, RGB(31, 19, 11) | 0x8000, RGB(31, 20, 12) | 0x8000, RGB(31, 21, 12) | 0x8000,
    RGB(31, 23, 13) | 0x0000, RGB(31, 24, 14) | 0x0000, RGB(31, 24, 15) | 0x8000, RGB(31, 25, 15) | 0x8000, RGB(31, 26, 16) | 0x8000, RGB(31, 27, 17) | 0x0000, RGB(31, 28, 17) | 0x0000, RGB(31, 28, 17) | 0x8000
};

static const u32 sCentralCircleTileset[] = INCBIN_U32("graphics/rooms/backgrounds/central_circle/tileset.4bpp.lz");
static const u16 sCentralCircleTilemap[] = INCBIN_U16("graphics/rooms/backgrounds/central_circle/tilemap.bin");

const struct RoomTiledBG gCentralCircleRoomTiledBG = {
    .width = 30,
    .height = 30,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sCentralCircleTileset,
    .tilesetSize = 900,
    .palette = sCentralCirclePalette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sCentralCirclePalette),
    .tilemap = sCentralCircleTilemap,
    .unk1C = 0x3210000
};
