#include <stdlib.h>
unsigned short v3 (signed int, signed short);
unsigned short (*v4) (signed int, signed short) = v3;
void v5 (signed char, signed short, signed int, signed int);
void (*v6) (signed char, signed short, signed int, signed int) = v5;
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned int v9 (unsigned int, signed char, unsigned char, signed short);
extern unsigned int (*v10) (unsigned int, signed char, unsigned char, signed short);
extern unsigned int v11 (unsigned char, signed short);
extern unsigned int (*v12) (unsigned char, signed short);
extern void v13 (unsigned char, unsigned short, signed int, unsigned char);
extern void (*v14) (unsigned char, unsigned short, signed int, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed char, signed char);
extern signed char (*v24) (signed char, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = -3;
unsigned short v103 = 7;
unsigned int v102 = 2U;

void v5 (signed char v105, signed short v106, signed int v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -1;
unsigned int v110 = 4U;
signed short v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -4;
signed char v115 = 0;
signed char v114 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
