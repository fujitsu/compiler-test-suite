#include <stdlib.h>
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
void v5 (signed char, unsigned int, unsigned char, unsigned char);
void (*v6) (signed char, unsigned int, unsigned char, unsigned char) = v5;
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern unsigned int v13 (unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned char, unsigned char);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
void v23 (unsigned char, unsigned short);
void (*v24) (unsigned char, unsigned short) = v23;
extern unsigned char v25 (unsigned short, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned char, signed char, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 5;
unsigned short v105 = 4;
unsigned int v104 = 3U;

void v23 (unsigned char v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 7U;
signed char v110 = -1;
unsigned short v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v112, unsigned int v113, unsigned char v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 7;
signed int v117 = -4;
unsigned short v116 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
