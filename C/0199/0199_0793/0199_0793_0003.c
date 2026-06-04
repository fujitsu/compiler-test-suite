#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned char v7 (signed short, signed short, unsigned short, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
unsigned int v13 (unsigned int);
unsigned int (*v14) (unsigned int) = v13;
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern signed short v17 (unsigned int, signed char, unsigned short, signed short);
extern signed short (*v18) (unsigned int, signed char, unsigned short, signed short);
unsigned int v19 (unsigned int, unsigned int, unsigned short);
unsigned int (*v20) (unsigned int, unsigned int, unsigned short) = v19;
extern unsigned char v21 (signed short, unsigned short);
extern unsigned char (*v22) (signed short, unsigned short);
signed char v23 (unsigned int, unsigned short);
signed char (*v24) (unsigned int, unsigned short) = v23;
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned char v29 (unsigned char, unsigned char);
unsigned char (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v97 = 0;
signed short v96 = 1;
signed char v95 = -4;

unsigned char v29 (unsigned char v98, unsigned char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 2U;
unsigned char v101 = 7;
signed int v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned int v103, unsigned short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 1;
unsigned char v106 = 7;
unsigned int v105 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v108, unsigned int v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 4U;
unsigned short v112 = 1;
unsigned int v111 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 2;
signed short v116 = -4;
unsigned char v115 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
