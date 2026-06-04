#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, unsigned char);
extern unsigned short (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
extern signed short v7 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, signed char, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed int, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned int, signed short);
signed int v13 (unsigned char, signed short, unsigned char, unsigned char);
signed int (*v14) (unsigned char, signed short, unsigned char, unsigned char) = v13;
extern unsigned short v15 (signed char, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed char, signed char, unsigned short, signed short);
extern unsigned short v17 (unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int);
void v21 (signed char);
void (*v22) (signed char) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed char v27 (unsigned short, signed short, unsigned int, signed char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, signed char);
extern unsigned int v29 (signed int, unsigned int, signed short);
extern unsigned int (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = -1;
signed char v103 = -2;
unsigned short v102 = 0;

void v21 (signed char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 2;
unsigned short v107 = 3;
unsigned int v106 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v109, signed short v110, unsigned char v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed short v114 = 0;
signed int v113 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
