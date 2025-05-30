#ifndef GUARD_CODE_08124BE0_H
#define GUARD_CODE_08124BE0_H

#include "data.h"
#include "global.h"
#include "pause_world_map.h"
#include "task.h"

// TODO: Into pause_help.h
struct Unk_08D6113C {
    /* 0x0 */ const u32* unkSrc;
    /* 0x4 */ u32* unkDest;
}; /* size = 0x8 */

extern const struct Unk_08D6113C gUnk_08D6113C[];

void sub_08124BE0(void);
void sub_08124E80(void);
void sub_08124EA0(void);
void sub_08124EC8(void);
void sub_08125088(struct UnkKirbyMapSprite*, u32);
struct Task* sub_081252FC(u32);
void sub_081254A8(void);
void sub_08125690(void);
void sub_08125828(void);
void sub_0812595C(struct PauseWorldMap*);

#endif
