#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (signed short, signed char, signed short, signed int);
extern void (*v4) (signed short, signed char, signed short, signed int);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern signed char v7 (signed short, signed short);
extern signed char (*v8) (signed short, signed short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
signed int v11 (signed short, signed short);
signed int (*v12) (signed short, signed short) = v11;
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, unsigned int, signed int);
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
signed int v27 (unsigned char, unsigned char);
signed int (*v28) (unsigned char, unsigned char) = v27;
void v29 (unsigned char, unsigned short);
void (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 4;
signed char v94 = -3;
unsigned int v93 = 3U;

void v29 (unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 6;
unsigned char v99 = 3;
signed short v98 = -3;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed int v27 (unsigned char v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 4;
unsigned int v104 = 3U;
unsigned short v103 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v106, signed short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 7U;
unsigned short v109 = 0;
unsigned char v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
